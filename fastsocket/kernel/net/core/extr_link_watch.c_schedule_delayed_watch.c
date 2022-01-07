
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int linkwatch_wq ;
 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

__attribute__((used)) static int schedule_delayed_watch(struct delayed_work *dwork,
     unsigned long delay)
{
 return queue_delayed_work(linkwatch_wq, dwork, delay);
}
