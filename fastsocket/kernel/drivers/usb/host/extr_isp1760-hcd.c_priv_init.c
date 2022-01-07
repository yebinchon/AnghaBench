
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {scalar_t__ regs; } ;
struct isp1760_hcd {int i_thresh; int periodic_size; int lock; } ;


 int DEFAULT_I_TDPS ;
 scalar_t__ HCC_ISOC_CACHE (int ) ;
 int HCC_ISOC_THRES (int ) ;
 scalar_t__ HC_HCCPARAMS ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int isp1760_readl (scalar_t__) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int priv_init(struct usb_hcd *hcd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 u32 hcc_params;

 spin_lock_init(&priv->lock);





 priv->periodic_size = DEFAULT_I_TDPS;


 hcc_params = isp1760_readl(hcd->regs + HC_HCCPARAMS);

 if (HCC_ISOC_CACHE(hcc_params))
  priv->i_thresh = 8;
 else
  priv->i_thresh = 2 + HCC_ISOC_THRES(hcc_params);

 return 0;
}
