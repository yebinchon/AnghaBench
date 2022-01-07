
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvesafb_ktask {struct uvesafb_ktask* done; } ;


 int kfree (struct uvesafb_ktask*) ;

__attribute__((used)) static void uvesafb_free(struct uvesafb_ktask *task)
{
 if (task) {
  if (task->done)
   kfree(task->done);
  kfree(task);
 }
}
