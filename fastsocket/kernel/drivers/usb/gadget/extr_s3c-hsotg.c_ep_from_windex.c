
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_hsotg_ep {int dir_in; } ;
struct s3c_hsotg {struct s3c_hsotg_ep* eps; } ;


 int S3C_HSOTG_EPS ;
 int USB_DIR_IN ;

__attribute__((used)) static struct s3c_hsotg_ep *ep_from_windex(struct s3c_hsotg *hsotg,
        u32 windex)
{
 struct s3c_hsotg_ep *ep = &hsotg->eps[windex & 0x7F];
 int dir = (windex & USB_DIR_IN) ? 1 : 0;
 int idx = windex & 0x7F;

 if (windex >= 0x100)
  return ((void*)0);

 if (idx > S3C_HSOTG_EPS)
  return ((void*)0);

 if (idx && ep->dir_in != dir)
  return ((void*)0);

 return ep;
}
