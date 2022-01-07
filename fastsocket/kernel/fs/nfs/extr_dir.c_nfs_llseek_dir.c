
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_open_dir_context {scalar_t__ duped; scalar_t__ dir_cookie; } ;
struct inode {int i_mutex; } ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_pos; struct nfs_open_dir_context* private_data; TYPE_1__ f_path; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_2__ d_name; } ;


 scalar_t__ EINVAL ;
 int FILE ;
 int dfprintk (int ,char*,int ,int ,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t nfs_llseek_dir(struct file *filp, loff_t offset, int origin)
{
 struct dentry *dentry = filp->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 struct nfs_open_dir_context *dir_ctx = filp->private_data;

 dfprintk(FILE, "NFS: llseek dir(%s/%s, %lld, %d)\n",
   dentry->d_parent->d_name.name,
   dentry->d_name.name,
   offset, origin);

 mutex_lock(&inode->i_mutex);
 switch (origin) {
  case 1:
   offset += filp->f_pos;
  case 0:
   if (offset >= 0)
    break;
  default:
   offset = -EINVAL;
   goto out;
 }
 if (offset != filp->f_pos) {
  filp->f_pos = offset;
  dir_ctx->dir_cookie = 0;
  dir_ctx->duped = 0;
 }
out:
 mutex_unlock(&inode->i_mutex);
 return offset;
}
