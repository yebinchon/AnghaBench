
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_export {int ex_flags; } ;
struct dentry {int * d_inode; } ;


 int NFSEXP_V4ROOT ;
 scalar_t__ d_mountpoint (struct dentry*) ;

int nfsd_mountpoint(struct dentry *dentry, struct svc_export *exp)
{
 if (d_mountpoint(dentry))
  return 1;
 if (!(exp->ex_flags & NFSEXP_V4ROOT))
  return 0;
 return dentry->d_inode != ((void*)0);
}
