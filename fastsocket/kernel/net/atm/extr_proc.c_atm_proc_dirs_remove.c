
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_proc_entry {scalar_t__ name; scalar_t__ dirent; } ;


 struct atm_proc_entry* atm_proc_ents ;
 int atm_proc_root ;
 int init_net ;
 int proc_net_remove (int *,char*) ;
 int remove_proc_entry (scalar_t__,int ) ;

__attribute__((used)) static void atm_proc_dirs_remove(void)
{
 static struct atm_proc_entry *e;

 for (e = atm_proc_ents; e->name; e++) {
  if (e->dirent)
   remove_proc_entry(e->name, atm_proc_root);
 }
 proc_net_remove(&init_net, "atm");
}
