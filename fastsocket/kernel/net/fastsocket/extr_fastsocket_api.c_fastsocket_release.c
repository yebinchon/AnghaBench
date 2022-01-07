
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_flags; } ;


 int DCACHE_FASTSOCKET ;
 int DEBUG ;
 int DPRINTK (int ,char*,...) ;
 int INFO ;
 int THIS_MODULE ;
 int module_put (int ) ;

__attribute__((used)) static int fastsocket_release(struct inode *inode, struct file *filp)
{
 DPRINTK(DEBUG, "Enter fsocket_release. inode(%p) file(%p) dentry(%p)",
  inode, filp, filp->f_path.dentry);

 if (filp->f_path.dentry->d_flags & DCACHE_FASTSOCKET) {
  DPRINTK(INFO, "dentry memleak happens!!!\n");
 }

 module_put(THIS_MODULE);

 DPRINTK(INFO, "Release module reference\n");

 return 0;
}
