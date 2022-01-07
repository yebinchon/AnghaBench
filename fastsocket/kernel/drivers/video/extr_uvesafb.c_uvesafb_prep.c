
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvesafb_ktask {void* done; } ;


 int GFP_KERNEL ;
 int kfree (struct uvesafb_ktask*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct uvesafb_ktask *uvesafb_prep(void)
{
 struct uvesafb_ktask *task;

 task = kzalloc(sizeof(*task), GFP_KERNEL);
 if (task) {
  task->done = kzalloc(sizeof(*task->done), GFP_KERNEL);
  if (!task->done) {
   kfree(task);
   task = ((void*)0);
  }
 }
 return task;
}
