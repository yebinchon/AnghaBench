
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct isp116x {int dummy; } ;



__attribute__((used)) static inline struct isp116x *hcd_to_isp116x(struct usb_hcd *hcd)
{
 return (struct isp116x *)(hcd->hcd_priv);
}
