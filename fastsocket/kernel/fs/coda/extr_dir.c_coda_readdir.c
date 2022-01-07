
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_3__* f_op; TYPE_2__ f_path; } ;
struct coda_file_info {scalar_t__ cfi_magic; struct file* cfi_container; } ;
typedef int filldir_t ;
struct TYPE_6__ {int (* readdir ) (struct file*,void*,int ) ;} ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int BUG_ON (int) ;
 struct coda_file_info* CODA_FTOC (struct file*) ;
 scalar_t__ CODA_MAGIC ;
 int ENOENT ;
 int ENOTDIR ;
 int IS_DEADDIR (struct inode*) ;
 int coda_venus_readdir (struct file*,void*,int ) ;
 int file_accessed (struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct file*,void*,int ) ;

__attribute__((used)) static int coda_readdir(struct file *coda_file, void *buf, filldir_t filldir)
{
 struct coda_file_info *cfi;
 struct file *host_file;
 int ret;

 cfi = CODA_FTOC(coda_file);
 BUG_ON(!cfi || cfi->cfi_magic != CODA_MAGIC);
 host_file = cfi->cfi_container;

 if (!host_file->f_op)
  return -ENOTDIR;

 if (host_file->f_op->readdir)
 {




  struct inode *host_inode = host_file->f_path.dentry->d_inode;

  mutex_lock(&host_inode->i_mutex);
  host_file->f_pos = coda_file->f_pos;

  ret = -ENOENT;
  if (!IS_DEADDIR(host_inode)) {
   ret = host_file->f_op->readdir(host_file, buf, filldir);
   file_accessed(host_file);
  }

  coda_file->f_pos = host_file->f_pos;
  mutex_unlock(&host_inode->i_mutex);
 }
 else
  ret = coda_venus_readdir(coda_file, buf, filldir);

 return ret;
}
