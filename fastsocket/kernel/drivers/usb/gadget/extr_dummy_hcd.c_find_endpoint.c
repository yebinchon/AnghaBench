
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dummy_ep {TYPE_1__* desc; } ;
struct dummy {struct dummy_ep* ep; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int DUMMY_ENDPOINTS ;
 int USB_DIR_IN ;
 int is_active (struct dummy*) ;

__attribute__((used)) static struct dummy_ep *find_endpoint (struct dummy *dum, u8 address)
{
 int i;

 if (!is_active (dum))
  return ((void*)0);
 if ((address & ~USB_DIR_IN) == 0)
  return &dum->ep [0];
 for (i = 1; i < DUMMY_ENDPOINTS; i++) {
  struct dummy_ep *ep = &dum->ep [i];

  if (!ep->desc)
   continue;
  if (ep->desc->bEndpointAddress == address)
   return ep;
 }
 return ((void*)0);
}
