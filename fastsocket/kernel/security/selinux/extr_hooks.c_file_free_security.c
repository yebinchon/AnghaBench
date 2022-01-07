
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_security_struct {int dummy; } ;
struct file {struct file_security_struct* f_security; } ;


 int kfree (struct file_security_struct*) ;

__attribute__((used)) static void file_free_security(struct file *file)
{
 struct file_security_struct *fsec = file->f_security;
 file->f_security = ((void*)0);
 kfree(fsec);
}
