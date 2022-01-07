
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int cancel_delayed_work (struct delayed_work*) ;
 int flush_scheduled_work () ;
 int schedule_delayed_work (struct delayed_work*,int ) ;

__attribute__((used)) static int run_delayed_work(struct delayed_work *dwork)
{
 int ret;


 ret = cancel_delayed_work(dwork);



 if (ret) {
  schedule_delayed_work(dwork, 0);
  flush_scheduled_work();
 }
 return ret;
}
