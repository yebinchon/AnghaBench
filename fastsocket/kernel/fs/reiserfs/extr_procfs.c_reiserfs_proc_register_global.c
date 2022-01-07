
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
typedef int read_proc_t ;



struct proc_dir_entry *reiserfs_proc_register_global(char *name,
           read_proc_t * func)
{
 return ((void*)0);
}
