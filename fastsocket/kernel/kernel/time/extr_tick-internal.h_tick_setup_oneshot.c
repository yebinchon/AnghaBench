
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef int ktime_t ;


 int BUG () ;

__attribute__((used)) static inline
void tick_setup_oneshot(struct clock_event_device *newdev,
   void (*handler)(struct clock_event_device *),
   ktime_t nextevt)
{
 BUG();
}
