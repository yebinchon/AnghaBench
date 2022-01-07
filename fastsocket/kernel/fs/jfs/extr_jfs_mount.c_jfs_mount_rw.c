
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_sb_info {scalar_t__ state; TYPE_3__* ipbmap; TYPE_1__* ipimap; } ;
struct TYPE_6__ {int i_mapping; } ;
struct TYPE_5__ {int i_mapping; } ;


 int EINVAL ;
 scalar_t__ FM_CLEAN ;
 int FM_MOUNT ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 scalar_t__ chkSuper (struct super_block*) ;
 int dbMount (TYPE_3__*) ;
 int dbUnmount (TYPE_3__*,int) ;
 int diMount (TYPE_1__*) ;
 int diUnmount (TYPE_1__*,int) ;
 int jfs_err (char*,...) ;
 int lmLogClose (struct super_block*) ;
 int lmLogOpen (struct super_block*) ;
 int logMOUNT (struct super_block*) ;
 int truncate_inode_pages (int ,int ) ;
 int updateSuper (struct super_block*,int ) ;

int jfs_mount_rw(struct super_block *sb, int remount)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 int rc;






 if (remount) {
  if (chkSuper(sb) || (sbi->state != FM_CLEAN))
   return -EINVAL;

  truncate_inode_pages(sbi->ipimap->i_mapping, 0);
  truncate_inode_pages(sbi->ipbmap->i_mapping, 0);
  diUnmount(sbi->ipimap, 1);
  if ((rc = diMount(sbi->ipimap))) {
   jfs_err("jfs_mount_rw: diMount failed!");
   return rc;
  }

  dbUnmount(sbi->ipbmap, 1);
  if ((rc = dbMount(sbi->ipbmap))) {
   jfs_err("jfs_mount_rw: dbMount failed!");
   return rc;
  }
 }




 if ((rc = lmLogOpen(sb)))
  return rc;




 if ((rc = updateSuper(sb, FM_MOUNT))) {
  jfs_err("jfs_mount: updateSuper failed w/rc = %d", rc);
  lmLogClose(sb);
  return rc;
 }




 logMOUNT(sb);

 return rc;
}
