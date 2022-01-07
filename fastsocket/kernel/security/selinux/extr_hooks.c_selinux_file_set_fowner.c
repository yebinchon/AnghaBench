
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_security_struct {int fown_sid; } ;
struct file {struct file_security_struct* f_security; } ;


 int current_sid () ;

__attribute__((used)) static int selinux_file_set_fowner(struct file *file)
{
 struct file_security_struct *fsec;

 fsec = file->f_security;
 fsec->fown_sid = current_sid();

 return 0;
}
