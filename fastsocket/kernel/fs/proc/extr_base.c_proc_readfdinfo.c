
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int filldir_t ;


 int proc_fdinfo_instantiate ;
 int proc_readfd_common (struct file*,void*,int ,int ) ;

__attribute__((used)) static int proc_readfdinfo(struct file *filp, void *dirent, filldir_t filldir)
{
 return proc_readfd_common(filp, dirent, filldir,
      proc_fdinfo_instantiate);
}
