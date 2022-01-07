
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_sb_info {TYPE_1__* direct_inode; int nls_tab; } ;
struct TYPE_2__ {int i_mapping; } ;


 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int iput (TYPE_1__*) ;
 int jfs_err (char*,int) ;
 int jfs_info (char*) ;
 int jfs_umount (struct super_block*) ;
 int kfree (struct jfs_sb_info*) ;
 int lock_kernel () ;
 int truncate_inode_pages (int ,int ) ;
 int unload_nls (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void jfs_put_super(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 int rc;

 jfs_info("In jfs_put_super");

 lock_kernel();

 rc = jfs_umount(sb);
 if (rc)
  jfs_err("jfs_umount failed with return code %d", rc);

 unload_nls(sbi->nls_tab);

 truncate_inode_pages(sbi->direct_inode->i_mapping, 0);
 iput(sbi->direct_inode);

 kfree(sbi);

 unlock_kernel();
}
