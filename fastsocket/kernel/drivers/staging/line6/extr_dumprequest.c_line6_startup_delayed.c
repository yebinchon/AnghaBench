
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* function ) (unsigned long) ;unsigned long data; scalar_t__ expires; } ;
struct line6_dump_request {TYPE_1__ timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

void line6_startup_delayed(struct line6_dump_request *l6dr, int seconds,
      void (*function)(unsigned long), void *data)
{
 l6dr->timer.expires = jiffies + seconds * HZ;
 l6dr->timer.function = function;
 l6dr->timer.data = (unsigned long)data;
 add_timer(&l6dr->timer);
}
