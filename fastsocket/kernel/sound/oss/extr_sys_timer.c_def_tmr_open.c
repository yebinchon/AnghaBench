
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 int EBUSY ;
 int add_timer (TYPE_1__*) ;
 int curr_tempo ;
 int curr_timebase ;
 TYPE_1__ def_tmr ;
 scalar_t__ jiffies ;
 int opened ;
 int tmr_reset () ;

__attribute__((used)) static int
def_tmr_open(int dev, int mode)
{
 if (opened)
  return -EBUSY;

 tmr_reset();
 curr_tempo = 60;
 curr_timebase = 100;
 opened = 1;
 {
  def_tmr.expires = (1) + jiffies;
  add_timer(&def_tmr);
 };

 return 0;
}
