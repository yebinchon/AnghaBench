
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_flags; int f_path; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {scalar_t__ in_execve; } ;


 int O_ACCMODE ;
 int O_APPEND ;
 int O_TRUNC ;
 TYPE_1__* current ;
 int tomoyo_check_open_permission (int ,int *,int) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_dentry_open(struct file *f, const struct cred *cred)
{
 int flags = f->f_flags;

 if ((flags + 1) & O_ACCMODE)
  flags++;
 flags |= f->f_flags & (O_APPEND | O_TRUNC);

 if (current->in_execve)
  return 0;
 return tomoyo_check_open_permission(tomoyo_domain(), &f->f_path, flags);
}
