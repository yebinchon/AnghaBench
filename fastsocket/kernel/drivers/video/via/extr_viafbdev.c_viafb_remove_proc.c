
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int remove_proc_entry (char*,struct proc_dir_entry*) ;

__attribute__((used)) static void viafb_remove_proc(struct proc_dir_entry *viafb_entry)
{

 remove_proc_entry("dvp0", viafb_entry);
 remove_proc_entry("dvp1", viafb_entry);
 remove_proc_entry("dfph", viafb_entry);
 remove_proc_entry("dfpl", viafb_entry);
 remove_proc_entry("vt1636", viafb_entry);
 remove_proc_entry("vt1625", viafb_entry);
 remove_proc_entry("viafb", ((void*)0));
}
