
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int file_alloc_security (struct file*) ;

__attribute__((used)) static int selinux_file_alloc_security(struct file *file)
{
 return file_alloc_security(file);
}
