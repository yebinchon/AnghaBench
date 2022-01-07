
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int i_nlink; struct timespec i_ctime; struct timespec i_atime; struct timespec i_mtime; int i_version; struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct dentry {TYPE_2__* d_parent; int d_time; int d_name; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_version; } ;


 struct timespec CURRENT_TIME_SEC ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int brelse (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int fat_alloc_new_dir (struct inode*,struct timespec*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int fat_free_clusters (struct inode*,int) ;
 int inc_nlink (struct inode*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;
 int vfat_add_entry (struct inode*,int *,int,int,struct timespec*,struct fat_slot_info*) ;

__attribute__((used)) static int vfat_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode;
 struct fat_slot_info sinfo;
 struct timespec ts;
 int err, cluster;

 lock_super(sb);

 ts = CURRENT_TIME_SEC;
 cluster = fat_alloc_new_dir(dir, &ts);
 if (cluster < 0) {
  err = cluster;
  goto out;
 }
 err = vfat_add_entry(dir, &dentry->d_name, 1, cluster, &ts, &sinfo);
 if (err)
  goto out_free;
 dir->i_version++;
 inc_nlink(dir);

 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);

  goto out;
 }
 inode->i_version++;
 inode->i_nlink = 2;
 inode->i_mtime = inode->i_atime = inode->i_ctime = ts;


 dentry->d_time = dentry->d_parent->d_inode->i_version;
 d_instantiate(dentry, inode);

 unlock_super(sb);
 return 0;

out_free:
 fat_free_clusters(dir, cluster);
out:
 unlock_super(sb);
 return err;
}
