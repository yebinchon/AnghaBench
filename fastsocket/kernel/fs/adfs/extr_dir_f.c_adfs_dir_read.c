
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize_bits; } ;
struct TYPE_3__ {scalar_t__ endmasseq; char endname; scalar_t__ dircheckbyte; } ;
struct TYPE_4__ {scalar_t__ startmasseq; TYPE_1__ new; int startname; } ;
struct adfs_dir {int nr_buffers; struct super_block* sb; int * bh; TYPE_2__ dirtail; TYPE_2__ dirhead; } ;


 int EIO ;
 int __adfs_block_map (struct super_block*,unsigned long,int) ;
 scalar_t__ adfs_dir_checkbyte (struct adfs_dir*) ;
 int adfs_error (struct super_block*,char*,unsigned long,...) ;
 int brelse (int ) ;
 int bufoff (int *,int) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int memcpy (TYPE_2__*,int ,int) ;
 int sb_bread (struct super_block*,int) ;

__attribute__((used)) static int
adfs_dir_read(struct super_block *sb, unsigned long object_id,
       unsigned int size, struct adfs_dir *dir)
{
 const unsigned int blocksize_bits = sb->s_blocksize_bits;
 int blk = 0;





 if (size & 2047)
  goto bad_dir;

 size >>= blocksize_bits;

 dir->nr_buffers = 0;
 dir->sb = sb;

 for (blk = 0; blk < size; blk++) {
  int phys;

  phys = __adfs_block_map(sb, object_id, blk);
  if (!phys) {
   adfs_error(sb, "dir object %lX has a hole at offset %d",
       object_id, blk);
   goto release_buffers;
  }

  dir->bh[blk] = sb_bread(sb, phys);
  if (!dir->bh[blk])
   goto release_buffers;
 }

 memcpy(&dir->dirhead, bufoff(dir->bh, 0), sizeof(dir->dirhead));
 memcpy(&dir->dirtail, bufoff(dir->bh, 2007), sizeof(dir->dirtail));

 if (dir->dirhead.startmasseq != dir->dirtail.new.endmasseq ||
     memcmp(&dir->dirhead.startname, &dir->dirtail.new.endname, 4))
  goto bad_dir;

 if (memcmp(&dir->dirhead.startname, "Nick", 4) &&
     memcmp(&dir->dirhead.startname, "Hugo", 4))
  goto bad_dir;

 if (adfs_dir_checkbyte(dir) != dir->dirtail.new.dircheckbyte)
  goto bad_dir;

 dir->nr_buffers = blk;

 return 0;

bad_dir:
 adfs_error(sb, "corrupted directory fragment %lX",
     object_id);
release_buffers:
 for (blk -= 1; blk >= 0; blk -= 1)
  brelse(dir->bh[blk]);

 dir->sb = ((void*)0);

 return -EIO;
}
