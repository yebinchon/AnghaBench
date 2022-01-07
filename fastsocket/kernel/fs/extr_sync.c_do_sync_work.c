
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kfree (struct work_struct*) ;
 int printk (char*) ;
 int sync_filesystems (int ) ;

__attribute__((used)) static void do_sync_work(struct work_struct *work)
{




 sync_filesystems(0);
 sync_filesystems(0);
 printk("Emergency Sync complete\n");
 kfree(work);
}
