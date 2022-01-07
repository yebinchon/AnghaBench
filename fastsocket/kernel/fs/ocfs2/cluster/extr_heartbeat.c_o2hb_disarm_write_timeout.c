
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_write_timeout_work; } ;


 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;

__attribute__((used)) static void o2hb_disarm_write_timeout(struct o2hb_region *reg)
{
 cancel_delayed_work(&reg->hr_write_timeout_work);
 flush_scheduled_work();
}
