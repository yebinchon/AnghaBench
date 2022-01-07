
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct lapb_cb {TYPE_1__ node; } ;


 int lapb_put (struct lapb_cb*) ;
 int list_del (TYPE_1__*) ;

__attribute__((used)) static void __lapb_remove_cb(struct lapb_cb *lapb)
{
 if (lapb->node.next) {
  list_del(&lapb->node);
  lapb_put(lapb);
 }
}
