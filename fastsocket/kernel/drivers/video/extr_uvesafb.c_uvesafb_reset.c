
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvesafb_ktask {struct completion* done; } ;
struct completion {int dummy; } ;


 int memset (struct uvesafb_ktask*,int ,int) ;

__attribute__((used)) static void uvesafb_reset(struct uvesafb_ktask *task)
{
 struct completion *cpl = task->done;

 memset(task, 0, sizeof(*task));
 task->done = cpl;
}
