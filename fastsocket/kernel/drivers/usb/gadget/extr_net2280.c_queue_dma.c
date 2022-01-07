
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2280_request {int td_dma; struct net2280_dma* td; } ;
struct net2280_ep {int td_dma; struct net2280_dma* dummy; } ;
struct net2280_dma {int dmadesc; } ;
typedef int dma_addr_t ;


 int cpu_to_le32 (int ) ;
 int fill_dma_desc (struct net2280_ep*,struct net2280_request*,int) ;

__attribute__((used)) static inline void
queue_dma (struct net2280_ep *ep, struct net2280_request *req, int valid)
{
 struct net2280_dma *end;
 dma_addr_t tmp;


 end = ep->dummy;
 ep->dummy = req->td;
 req->td = end;

 tmp = ep->td_dma;
 ep->td_dma = req->td_dma;
 req->td_dma = tmp;

 end->dmadesc = cpu_to_le32 (ep->td_dma);

 fill_dma_desc (ep, req, valid);
}
