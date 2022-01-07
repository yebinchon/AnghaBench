
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int length; unsigned int actual; unsigned int buf; scalar_t__ zero; } ;
struct usba_request {int last_transaction; TYPE_2__ req; } ;
struct TYPE_3__ {unsigned int maxpacket; int name; } ;
struct usba_ep {int fifo; TYPE_1__ ep; } ;


 int DBG (int ,char*,int ,struct usba_request*,unsigned int,char*) ;
 int DBG_QUEUE ;
 int SET_STA ;
 int USBA_TX_PK_RDY ;
 int memcpy_toio (int ,unsigned int,unsigned int) ;
 int usba_ep_writel (struct usba_ep*,int ,int ) ;

__attribute__((used)) static void next_fifo_transaction(struct usba_ep *ep, struct usba_request *req)
{
 unsigned int transaction_len;

 transaction_len = req->req.length - req->req.actual;
 req->last_transaction = 1;
 if (transaction_len > ep->ep.maxpacket) {
  transaction_len = ep->ep.maxpacket;
  req->last_transaction = 0;
 } else if (transaction_len == ep->ep.maxpacket && req->req.zero)
  req->last_transaction = 0;

 DBG(DBG_QUEUE, "%s: submit_transaction, req %p (length %d)%s\n",
  ep->ep.name, req, transaction_len,
  req->last_transaction ? ", done" : "");

 memcpy_toio(ep->fifo, req->req.buf + req->req.actual, transaction_len);
 usba_ep_writel(ep, SET_STA, USBA_TX_PK_RDY);
 req->req.actual += transaction_len;
}
