
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_security; } ;



__attribute__((used)) static void smack_file_free_security(struct file *file)
{
 file->f_security = ((void*)0);
}
