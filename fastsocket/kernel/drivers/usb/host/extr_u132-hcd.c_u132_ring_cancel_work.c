
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_ring {int scheduler; } ;
struct u132 {int kref; } ;


 scalar_t__ cancel_delayed_work (int *) ;
 int kref_put (int *,int ) ;
 int u132_hcd_delete ;

__attribute__((used)) static void u132_ring_cancel_work(struct u132 *u132, struct u132_ring *ring)
{
 if (cancel_delayed_work(&ring->scheduler))
  kref_put(&u132->kref, u132_hcd_delete);
}
