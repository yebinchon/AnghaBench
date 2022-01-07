
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int dummy; } ;


 int USB_PORT_FEAT_HIGHSPEED ;
 int USB_PORT_FEAT_LOWSPEED ;

__attribute__((used)) static inline unsigned int oxu_port_speed(struct oxu_hcd *oxu,
      unsigned int portsc)
{
 switch ((portsc >> 26) & 3) {
 case 0:
  return 0;
 case 1:
  return 1 << USB_PORT_FEAT_LOWSPEED;
 case 2:
 default:
  return 1 << USB_PORT_FEAT_HIGHSPEED;
 }
}
