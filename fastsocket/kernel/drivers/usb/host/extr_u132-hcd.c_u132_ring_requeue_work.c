
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_ring {int scheduler; } ;
struct u132 {int kref; } ;


 int kref_put (int *,int ) ;
 scalar_t__ queue_delayed_work (int ,int *,unsigned int) ;
 int u132_hcd_delete ;
 int workqueue ;

__attribute__((used)) static void u132_ring_requeue_work(struct u132 *u132, struct u132_ring *ring,
 unsigned int delta)
{
 if (delta > 0) {
  if (queue_delayed_work(workqueue, &ring->scheduler, delta))
   return;
 } else if (queue_delayed_work(workqueue, &ring->scheduler, 0))
  return;
 kref_put(&u132->kref, u132_hcd_delete);
 return;
}
