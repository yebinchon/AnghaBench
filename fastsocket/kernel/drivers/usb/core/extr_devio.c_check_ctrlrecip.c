
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_state {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int EHOSTUNREACH ;


 unsigned int USB_RECIP_MASK ;
 scalar_t__ USB_STATE_ADDRESS ;
 scalar_t__ USB_STATE_CONFIGURED ;
 scalar_t__ USB_STATE_UNAUTHENTICATED ;
 unsigned int USB_TYPE_MASK ;
 unsigned int USB_TYPE_VENDOR ;
 int checkintf (struct dev_state*,unsigned int) ;
 int findintfep (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int check_ctrlrecip(struct dev_state *ps, unsigned int requesttype,
      unsigned int index)
{
 int ret = 0;

 if (ps->dev->state != USB_STATE_UNAUTHENTICATED
  && ps->dev->state != USB_STATE_ADDRESS
  && ps->dev->state != USB_STATE_CONFIGURED)
  return -EHOSTUNREACH;
 if (USB_TYPE_VENDOR == (USB_TYPE_MASK & requesttype))
  return 0;

 index &= 0xff;
 switch (requesttype & USB_RECIP_MASK) {
 case 129:
  ret = findintfep(ps->dev, index);
  if (ret >= 0)
   ret = checkintf(ps, ret);
  break;

 case 128:
  ret = checkintf(ps, index);
  break;
 }
 return ret;
}
