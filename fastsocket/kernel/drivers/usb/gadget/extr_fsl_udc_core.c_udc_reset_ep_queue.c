
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsl_udc {int dummy; } ;
struct fsl_ep {scalar_t__ name; } ;


 int ESHUTDOWN ;
 struct fsl_ep* get_ep_by_pipe (struct fsl_udc*,int ) ;
 int nuke (struct fsl_ep*,int ) ;

__attribute__((used)) static void udc_reset_ep_queue(struct fsl_udc *udc, u8 pipe)
{
 struct fsl_ep *ep = get_ep_by_pipe(udc, pipe);

 if (ep->name)
  nuke(ep, -ESHUTDOWN);
}
