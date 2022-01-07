
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
typedef TYPE_2__ svc_client ;
struct svc_fh {int fh_handle; } ;
struct svc_export {int dummy; } ;
struct path {TYPE_3__* dentry; } ;
struct knfsd_fh {int dummy; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_9__ {struct inode* d_inode; } ;
struct TYPE_7__ {int s_id; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 int dprintk (char*,char*,TYPE_3__*,int ,int ,int ) ;
 struct svc_export* exp_parent (TYPE_2__*,struct path*) ;
 int exp_put (struct svc_export*) ;
 scalar_t__ fh_compose (struct svc_fh*,struct svc_export*,TYPE_3__*,int *) ;
 int fh_init (struct svc_fh*,int) ;
 int fh_put (struct svc_fh*) ;
 scalar_t__ kern_path (char*,int ,struct path*) ;
 int memcpy (struct knfsd_fh*,int *,int) ;
 int path_put (struct path*) ;
 int printk (char*,char*) ;

int
exp_rootfh(svc_client *clp, char *name, struct knfsd_fh *f, int maxsize)
{
 struct svc_export *exp;
 struct path path;
 struct inode *inode;
 struct svc_fh fh;
 int err;

 err = -EPERM;

 if (kern_path(name, 0, &path)) {
  printk("nfsd: exp_rootfh path not found %s", name);
  return err;
 }
 inode = path.dentry->d_inode;

 dprintk("nfsd: exp_rootfh(%s [%p] %s:%s/%ld)\n",
   name, path.dentry, clp->name,
   inode->i_sb->s_id, inode->i_ino);
 exp = exp_parent(clp, &path);
 if (IS_ERR(exp)) {
  err = PTR_ERR(exp);
  goto out;
 }




 fh_init(&fh, maxsize);
 if (fh_compose(&fh, exp, path.dentry, ((void*)0)))
  err = -EINVAL;
 else
  err = 0;
 memcpy(f, &fh.fh_handle, sizeof(struct knfsd_fh));
 fh_put(&fh);
 exp_put(exp);
out:
 path_put(&path);
 return err;
}
