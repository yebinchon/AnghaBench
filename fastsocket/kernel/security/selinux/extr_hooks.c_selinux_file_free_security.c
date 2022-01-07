
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int file_free_security (struct file*) ;

__attribute__((used)) static void selinux_file_free_security(struct file *file)
{
 file_free_security(file);
}
