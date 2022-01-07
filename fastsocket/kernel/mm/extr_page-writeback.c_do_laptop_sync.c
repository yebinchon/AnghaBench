
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kfree (struct work_struct*) ;
 int wakeup_flusher_threads (int ) ;

__attribute__((used)) static void do_laptop_sync(struct work_struct *work)
{
 wakeup_flusher_threads(0);
 kfree(work);
}
