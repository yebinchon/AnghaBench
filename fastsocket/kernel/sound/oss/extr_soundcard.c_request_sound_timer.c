
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int count ;
struct TYPE_3__ {int expires; } ;


 int add_timer (TYPE_1__*) ;
 int jiffies ;
 TYPE_1__ seq_timer ;

void request_sound_timer(int count)
{
 extern unsigned long seq_time;

 if (count < 0) {
  seq_timer.expires = (-count) + jiffies;
  add_timer(&seq_timer);
  return;
 }
 count += seq_time;

 count -= jiffies;

 if (count < 1)
  count = 1;

 seq_timer.expires = (count) + jiffies;
 add_timer(&seq_timer);
}
