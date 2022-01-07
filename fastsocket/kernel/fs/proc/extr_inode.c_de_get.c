
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int count; } ;


 int atomic_inc (int *) ;

struct proc_dir_entry *de_get(struct proc_dir_entry *de)
{
 atomic_inc(&de->count);
 return de;
}
