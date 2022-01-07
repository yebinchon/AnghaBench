
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct socket {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;

int sock_no_mmap(struct file *file, struct socket *sock, struct vm_area_struct *vma)
{

 return -ENODEV;
}
