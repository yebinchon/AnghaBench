
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_endp {int kref; int scheduler; } ;
struct u132 {int dummy; } ;


 int kref_get (int *) ;
 scalar_t__ queue_delayed_work (int ,int *,unsigned int) ;
 int workqueue ;

__attribute__((used)) static void u132_endp_queue_work(struct u132 *u132, struct u132_endp *endp,
 unsigned int delta)
{
 if (queue_delayed_work(workqueue, &endp->scheduler, delta))
  kref_get(&endp->kref);
}
