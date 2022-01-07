
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa25x_udc {int * ep; } ;


 int ECONNABORTED ;
 unsigned int PXA_UDC_NUM_ENDPOINTS ;
 int nuke (int *,int ) ;

__attribute__((used)) static inline void clear_ep_state (struct pxa25x_udc *dev)
{
 unsigned i;




 for (i = 1; i < PXA_UDC_NUM_ENDPOINTS; i++)
  nuke(&dev->ep[i], -ECONNABORTED);
}
