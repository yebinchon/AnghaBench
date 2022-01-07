
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qnx4_link_info {int dl_inode_ndx; int dl_inode_blk; } ;
struct qnx4_inode_entry {int di_status; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;


 struct dentry* ERR_CAST (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int QNX4DEBUG (char*) ;
 int QNX4_FILE_LINK ;
 int QNX4_INODES_PER_BLOCK ;
 int brelse (struct buffer_head*) ;
 int d_add (struct dentry*,struct inode*) ;
 int le32_to_cpu (int ) ;
 int lock_kernel () ;
 struct buffer_head* qnx4_find_entry (int,struct inode*,char const*,struct qnx4_inode_entry**,int*) ;
 struct inode* qnx4_iget (int ,int) ;
 int unlock_kernel () ;

struct dentry * qnx4_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 int ino;
 struct qnx4_inode_entry *de;
 struct qnx4_link_info *lnk;
 struct buffer_head *bh;
 const char *name = dentry->d_name.name;
 int len = dentry->d_name.len;
 struct inode *foundinode = ((void*)0);

 lock_kernel();
 if (!(bh = qnx4_find_entry(len, dir, name, &de, &ino)))
  goto out;

 if ((de->di_status & QNX4_FILE_LINK) == QNX4_FILE_LINK) {
  lnk = (struct qnx4_link_info *) de;
  ino = (le32_to_cpu(lnk->dl_inode_blk) - 1) *
                    QNX4_INODES_PER_BLOCK +
      lnk->dl_inode_ndx;
 }
 brelse(bh);

 foundinode = qnx4_iget(dir->i_sb, ino);
 if (IS_ERR(foundinode)) {
  unlock_kernel();
  QNX4DEBUG(("qnx4: lookup->iget -> error %ld\n",
      PTR_ERR(foundinode)));
  return ERR_CAST(foundinode);
 }
out:
 unlock_kernel();
 d_add(dentry, foundinode);

 return ((void*)0);
}
