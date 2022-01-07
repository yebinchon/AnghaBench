
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_sb_info {TYPE_1__* direct_inode; struct inode* ipimap; struct inode* ipaimap; struct inode* ipaimap2; struct jfs_log* log; struct inode* ipbmap; } ;
struct jfs_log {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_mapping; } ;


 int FM_CLEAN ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int dbUnmount (struct inode*,int ) ;
 int diFreeSpecial (struct inode*) ;
 int diUnmount (struct inode*,int ) ;
 int filemap_write_and_wait (int ) ;
 int jfs_flush_journal (struct jfs_log*,int) ;
 int jfs_info (char*,int) ;
 int lmLogClose (struct super_block*) ;
 int updateSuper (struct super_block*,int ) ;

int jfs_umount(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct inode *ipbmap = sbi->ipbmap;
 struct inode *ipimap = sbi->ipimap;
 struct inode *ipaimap = sbi->ipaimap;
 struct inode *ipaimap2 = sbi->ipaimap2;
 struct jfs_log *log;
 int rc = 0;

 jfs_info("UnMount JFS: sb:0x%p", sb);






 if ((log = sbi->log))



  jfs_flush_journal(log, 1);




 diUnmount(ipimap, 0);

 diFreeSpecial(ipimap);
 sbi->ipimap = ((void*)0);




 ipaimap2 = sbi->ipaimap2;
 if (ipaimap2) {
  diUnmount(ipaimap2, 0);
  diFreeSpecial(ipaimap2);
  sbi->ipaimap2 = ((void*)0);
 }




 ipaimap = sbi->ipaimap;
 diUnmount(ipaimap, 0);
 diFreeSpecial(ipaimap);
 sbi->ipaimap = ((void*)0);




 dbUnmount(ipbmap, 0);

 diFreeSpecial(ipbmap);
 sbi->ipimap = ((void*)0);





 filemap_write_and_wait(sbi->direct_inode->i_mapping);
 if (log) {
  updateSuper(sb, FM_CLEAN);






  rc = lmLogClose(sb);
 }
 jfs_info("UnMount JFS Complete: rc = %d", rc);
 return rc;
}
