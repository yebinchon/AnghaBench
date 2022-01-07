
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct ima_iint_cache {int refcount; int mutex; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int ENOMEM ;
 int S_ISREG (int ) ;
 int iint_free ;
 int ima_collect_measurement (struct ima_iint_cache*,struct file*) ;
 struct ima_iint_cache* ima_iint_find_get (struct inode*) ;
 int ima_initialized ;
 int ima_must_measure (struct ima_iint_cache*,struct inode*,int,int) ;
 int ima_store_measurement (struct ima_iint_cache*,struct file*,unsigned char const*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int process_measurement(struct file *file, const unsigned char *filename,
          int mask, int function)
{
 struct inode *inode = file->f_dentry->d_inode;
 struct ima_iint_cache *iint;
 int rc;

 if (!ima_initialized || !S_ISREG(inode->i_mode))
  return 0;
 iint = ima_iint_find_get(inode);
 if (!iint)
  return -ENOMEM;

 mutex_lock(&iint->mutex);
 rc = ima_must_measure(iint, inode, mask, function);
 if (rc != 0)
  goto out;

 rc = ima_collect_measurement(iint, file);
 if (!rc)
  ima_store_measurement(iint, file, filename);
out:
 mutex_unlock(&iint->mutex);
 kref_put(&iint->refcount, iint_free);
 return rc;
}
