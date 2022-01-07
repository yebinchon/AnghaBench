
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_state {TYPE_1__* dev; int list; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 int list_empty (int *) ;

__attribute__((used)) static int connected(struct dev_state *ps)
{
 return (!list_empty(&ps->list) &&
   ps->dev->state != USB_STATE_NOTATTACHED);
}
