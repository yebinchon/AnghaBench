
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int S_IRUGO ;
 int S_IXUGO ;
 struct proc_dir_entry* proc_mkdir_mode (char const*,int,struct proc_dir_entry*) ;

struct proc_dir_entry *proc_mkdir(const char *name,
  struct proc_dir_entry *parent)
{
 return proc_mkdir_mode(name, S_IRUGO | S_IXUGO, parent);
}
