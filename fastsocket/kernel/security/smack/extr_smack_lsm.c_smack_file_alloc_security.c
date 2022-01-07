
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_security; } ;


 int current_security () ;

__attribute__((used)) static int smack_file_alloc_security(struct file *file)
{
 file->f_security = current_security();
 return 0;
}
