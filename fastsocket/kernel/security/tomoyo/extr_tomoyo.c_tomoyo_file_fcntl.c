
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {unsigned long f_flags; } ;


 unsigned int F_SETFL ;
 unsigned long O_APPEND ;
 int tomoyo_check_rewrite_permission (int ,struct file*) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_file_fcntl(struct file *file, unsigned int cmd,
        unsigned long arg)
{
 if (cmd == F_SETFL && ((arg ^ file->f_flags) & O_APPEND))
  return tomoyo_check_rewrite_permission(tomoyo_domain(), file);
 return 0;
}
