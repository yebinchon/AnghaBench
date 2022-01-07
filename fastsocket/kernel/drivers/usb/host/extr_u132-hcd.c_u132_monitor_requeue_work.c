
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132 {int kref; int monitor; } ;


 int kref_put (int *,int ) ;
 int queue_delayed_work (int ,int *,unsigned int) ;
 int u132_hcd_delete ;
 int workqueue ;

__attribute__((used)) static void u132_monitor_requeue_work(struct u132 *u132, unsigned int delta)
{
 if (!queue_delayed_work(workqueue, &u132->monitor, delta))
  kref_put(&u132->kref, u132_hcd_delete);
}
