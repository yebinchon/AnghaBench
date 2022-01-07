
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct file {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int f_modown (struct file*,struct pid*,int,int) ;
 int security_file_set_fowner (struct file*) ;

int __f_setown(struct file *filp, struct pid *pid, enum pid_type type,
  int force)
{
 int err;

 err = security_file_set_fowner(filp);
 if (err)
  return err;

 f_modown(filp, pid, type, force);
 return 0;
}
