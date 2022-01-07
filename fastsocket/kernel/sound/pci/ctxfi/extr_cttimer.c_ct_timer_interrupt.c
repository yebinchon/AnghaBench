
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_timer {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* interrupt ) (struct ct_timer*) ;} ;


 unsigned int IT_INT ;
 int stub1 (struct ct_timer*) ;

__attribute__((used)) static void ct_timer_interrupt(void *data, unsigned int status)
{
 struct ct_timer *timer = data;


 if ((status & IT_INT) && timer->ops->interrupt)
  timer->ops->interrupt(timer);
}
