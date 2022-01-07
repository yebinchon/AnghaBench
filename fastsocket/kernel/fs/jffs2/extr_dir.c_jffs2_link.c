
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int sem; TYPE_2__* inocache; } ;
struct inode {int i_mode; int i_count; int i_ctime; int i_mtime; scalar_t__ i_nlink; int i_sb; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {scalar_t__ pino_nlink; int ino; } ;


 int DT_REG ;
 int EIO ;
 int EPERM ;
 int ITIME (int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int) ;
 int atomic_inc (int *) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int get_seconds () ;
 int jffs2_do_link (struct jffs2_sb_info*,struct jffs2_inode_info*,int ,int,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int jffs2_link (struct dentry *old_dentry, struct inode *dir_i, struct dentry *dentry)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(old_dentry->d_inode->i_sb);
 struct jffs2_inode_info *f = JFFS2_INODE_INFO(old_dentry->d_inode);
 struct jffs2_inode_info *dir_f = JFFS2_INODE_INFO(dir_i);
 int ret;
 uint8_t type;
 uint32_t now;


 if (!f->inocache)
  return -EIO;

 if (S_ISDIR(old_dentry->d_inode->i_mode))
  return -EPERM;


 type = (old_dentry->d_inode->i_mode & S_IFMT) >> 12;
 if (!type) type = DT_REG;

 now = get_seconds();
 ret = jffs2_do_link(c, dir_f, f->inocache->ino, type, dentry->d_name.name, dentry->d_name.len, now);

 if (!ret) {
  mutex_lock(&f->sem);
  old_dentry->d_inode->i_nlink = ++f->inocache->pino_nlink;
  mutex_unlock(&f->sem);
  d_instantiate(dentry, old_dentry->d_inode);
  dir_i->i_mtime = dir_i->i_ctime = ITIME(now);
  atomic_inc(&old_dentry->d_inode->i_count);
 }
 return ret;
}
