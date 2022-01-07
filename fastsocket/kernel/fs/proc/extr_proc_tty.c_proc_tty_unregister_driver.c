
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {struct proc_dir_entry* proc_entry; int driver_name; } ;
struct proc_dir_entry {int dummy; } ;


 int proc_tty_driver ;
 int remove_proc_entry (int ,int ) ;

void proc_tty_unregister_driver(struct tty_driver *driver)
{
 struct proc_dir_entry *ent;

 ent = driver->proc_entry;
 if (!ent)
  return;

 remove_proc_entry(driver->driver_name, proc_tty_driver);

 driver->proc_entry = ((void*)0);
}
