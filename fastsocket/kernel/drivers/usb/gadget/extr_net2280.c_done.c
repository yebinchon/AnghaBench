
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; int (* complete ) (TYPE_1__*,TYPE_2__*) ;int length; int actual; int dma; } ;
struct net2280_request {TYPE_2__ req; scalar_t__ mapped; int queue; } ;
struct TYPE_4__ {int name; } ;
struct net2280_ep {unsigned int stopped; TYPE_1__ ep; scalar_t__ is_in; struct net2280* dev; } ;
struct net2280 {int lock; int pdev; } ;


 int DMA_ADDR_INVALID ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int VDEBUG (struct net2280*,char*,int ,TYPE_2__*,int,int ,int ) ;
 int list_del_init (int *) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
done (struct net2280_ep *ep, struct net2280_request *req, int status)
{
 struct net2280 *dev;
 unsigned stopped = ep->stopped;

 list_del_init (&req->queue);

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;

 dev = ep->dev;
 if (req->mapped) {
  pci_unmap_single (dev->pdev, req->req.dma, req->req.length,
   ep->is_in ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
  req->req.dma = DMA_ADDR_INVALID;
  req->mapped = 0;
 }

 if (status && status != -ESHUTDOWN)
  VDEBUG (dev, "complete %s req %p stat %d len %u/%u\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);


 ep->stopped = 1;
 spin_unlock (&dev->lock);
 req->req.complete (&ep->ep, &req->req);
 spin_lock (&dev->lock);
 ep->stopped = stopped;
}
