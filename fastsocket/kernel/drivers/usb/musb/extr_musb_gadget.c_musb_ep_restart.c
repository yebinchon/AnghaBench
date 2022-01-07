
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct musb_request {scalar_t__ tx; int epnum; TYPE_1__ request; } ;
struct musb {int mregs; } ;


 int DBG (int,char*,char*,TYPE_1__*,int ,int ) ;
 int musb_ep_select (int ,int ) ;
 int rxstate (struct musb*,struct musb_request*) ;
 int txstate (struct musb*,struct musb_request*) ;

__attribute__((used)) static void musb_ep_restart(struct musb *musb, struct musb_request *req)
{
 DBG(3, "<== %s request %p len %u on hw_ep%d\n",
  req->tx ? "TX/IN" : "RX/OUT",
  &req->request, req->request.length, req->epnum);

 musb_ep_select(musb->mregs, req->epnum);
 if (req->tx)
  txstate(musb, req);
 else
  rxstate(musb, req);
}
