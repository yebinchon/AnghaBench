
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iso_directory_record {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 int do_isofs_readdir (struct inode*,struct file*,void*,int ,char*,struct iso_directory_record*) ;
 int free_page (unsigned long) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int isofs_readdir(struct file *filp,
  void *dirent, filldir_t filldir)
{
 int result;
 char *tmpname;
 struct iso_directory_record *tmpde;
 struct inode *inode = filp->f_path.dentry->d_inode;

 tmpname = (char *)__get_free_page(GFP_KERNEL);
 if (tmpname == ((void*)0))
  return -ENOMEM;

 lock_kernel();
 tmpde = (struct iso_directory_record *) (tmpname+1024);

 result = do_isofs_readdir(inode, filp, dirent, filldir, tmpname, tmpde);

 free_page((unsigned long) tmpname);
 unlock_kernel();
 return result;
}
