
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;
struct TYPE_2__ {int nr_blocks; int on_errors; } ;
typedef int NTFS_BOOT_SECTOR ;


 int MS_RDONLY ;
 int NTFS_BLOCK_SIZE ;
 TYPE_1__* NTFS_SB (struct super_block*) ;
 int ON_ERRORS_RECOVER ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 scalar_t__ is_boot_sector_ntfs (struct super_block*,int *,int const) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int ntfs_error (struct super_block*,char const*,...) ;
 int ntfs_warning (struct super_block*,char*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *read_ntfs_boot_sector(struct super_block *sb,
  const int silent)
{
 const char *read_err_str = "Unable to read %s boot sector.";
 struct buffer_head *bh_primary, *bh_backup;
 sector_t nr_blocks = NTFS_SB(sb)->nr_blocks;


 if ((bh_primary = sb_bread(sb, 0))) {
  if (is_boot_sector_ntfs(sb, (NTFS_BOOT_SECTOR*)
    bh_primary->b_data, silent))
   return bh_primary;
  if (!silent)
   ntfs_error(sb, "Primary boot sector is invalid.");
 } else if (!silent)
  ntfs_error(sb, read_err_str, "primary");
 if (!(NTFS_SB(sb)->on_errors & ON_ERRORS_RECOVER)) {
  if (bh_primary)
   brelse(bh_primary);
  if (!silent)
   ntfs_error(sb, "Mount option errors=recover not used. "
     "Aborting without trying to recover.");
  return ((void*)0);
 }

 if ((bh_backup = sb_bread(sb, nr_blocks - 1))) {
  if (is_boot_sector_ntfs(sb, (NTFS_BOOT_SECTOR*)
    bh_backup->b_data, silent))
   goto hotfix_primary_boot_sector;
  brelse(bh_backup);
 } else if (!silent)
  ntfs_error(sb, read_err_str, "backup");

 if ((bh_backup = sb_bread(sb, nr_blocks >> 1))) {
  if (is_boot_sector_ntfs(sb, (NTFS_BOOT_SECTOR*)
    bh_backup->b_data, silent))
   goto hotfix_primary_boot_sector;
  if (!silent)
   ntfs_error(sb, "Could not find a valid backup boot "
     "sector.");
  brelse(bh_backup);
 } else if (!silent)
  ntfs_error(sb, read_err_str, "backup");

 if (bh_primary)
  brelse(bh_primary);
 return ((void*)0);
hotfix_primary_boot_sector:
 if (bh_primary) {
  if (!(sb->s_flags & MS_RDONLY)) {
   ntfs_warning(sb, "Hot-fix: Recovering invalid primary "
     "boot sector from backup copy.");
   memcpy(bh_primary->b_data, bh_backup->b_data,
     NTFS_BLOCK_SIZE);
   mark_buffer_dirty(bh_primary);
   sync_dirty_buffer(bh_primary);
   if (buffer_uptodate(bh_primary)) {
    brelse(bh_backup);
    return bh_primary;
   }
   ntfs_error(sb, "Hot-fix: Device write error while "
     "recovering primary boot sector.");
  } else {
   ntfs_warning(sb, "Hot-fix: Recovery of primary boot "
     "sector failed: Read-only mount.");
  }
  brelse(bh_primary);
 }
 ntfs_warning(sb, "Using backup boot sector.");
 return bh_backup;
}
