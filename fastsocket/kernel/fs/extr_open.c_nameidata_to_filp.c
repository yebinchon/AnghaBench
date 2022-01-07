
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int mnt; int dentry; } ;
struct TYPE_5__ {struct file* file; } ;
struct TYPE_6__ {TYPE_1__ open; } ;
struct nameidata {TYPE_4__ path; TYPE_2__ intent; } ;
struct TYPE_7__ {int * dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct cred {int dummy; } ;


 struct file* __dentry_open (int ,int ,struct file*,int *,struct cred const*) ;
 struct cred* current_cred () ;
 int path_put (TYPE_4__*) ;

struct file *nameidata_to_filp(struct nameidata *nd)
{
 const struct cred *cred = current_cred();
 struct file *filp;


 filp = nd->intent.open.file;

 if (filp->f_path.dentry == ((void*)0))
  filp = __dentry_open(nd->path.dentry, nd->path.mnt, filp,
         ((void*)0), cred);
 else
  path_put(&nd->path);
 return filp;
}
