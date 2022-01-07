
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int state; int persistent; } ;
struct device {int dummy; } ;


 int RFKILL_BLOCK_SW ;
 int rfkill_resume_polling (struct rfkill*) ;
 int rfkill_set_block (struct rfkill*,int) ;
 struct rfkill* to_rfkill (struct device*) ;

__attribute__((used)) static int rfkill_resume(struct device *dev)
{
 struct rfkill *rfkill = to_rfkill(dev);
 bool cur;

 if (!rfkill->persistent) {
  cur = !!(rfkill->state & RFKILL_BLOCK_SW);
  rfkill_set_block(rfkill, cur);
 }

 rfkill_resume_polling(rfkill);

 return 0;
}
