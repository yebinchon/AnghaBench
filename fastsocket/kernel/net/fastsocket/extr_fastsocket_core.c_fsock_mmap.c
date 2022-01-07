
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int DPRINTK (int ,char*) ;
 int EINVAL ;
 int INFO ;

__attribute__((used)) static int fsock_mmap(struct file *file, struct vm_area_struct *vma)
{
 DPRINTK(INFO, "Do!\n");
 return -EINVAL;
}
