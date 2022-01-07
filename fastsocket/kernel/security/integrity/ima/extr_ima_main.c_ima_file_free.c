
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct ima_iint_cache {int refcount; int mutex; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int S_ISREG (int ) ;
 int iint_free ;
 int ima_dec_counts (struct ima_iint_cache*,struct inode*,struct file*) ;
 int ima_enabled ;
 struct ima_iint_cache* ima_iint_find_get (struct inode*) ;
 int ima_initialized ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ima_file_free(struct file *file)
{
 struct inode *inode = file->f_dentry->d_inode;
 struct ima_iint_cache *iint;

 if (!ima_enabled || !ima_initialized || !S_ISREG(inode->i_mode))
  return;
 iint = ima_iint_find_get(inode);
 if (!iint)
  return;

 mutex_lock(&iint->mutex);
 ima_dec_counts(iint, inode, file);
 mutex_unlock(&iint->mutex);
 kref_put(&iint->refcount, iint_free);
}
