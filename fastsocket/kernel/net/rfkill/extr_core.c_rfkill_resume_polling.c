
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; } ;
struct rfkill {TYPE_2__ poll_work; TYPE_1__* ops; } ;
struct TYPE_3__ {int poll; } ;


 int BUG_ON (int) ;
 int schedule_work (int *) ;

void rfkill_resume_polling(struct rfkill *rfkill)
{
 BUG_ON(!rfkill);

 if (!rfkill->ops->poll)
  return;

 schedule_work(&rfkill->poll_work.work);
}
