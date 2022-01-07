
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {struct page* context; int length; int buf; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct f_phonet {int out_ep; struct net_device* dev; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct page* __netdev_alloc_page (struct net_device*,int ) ;
 int netdev_free_page (struct net_device*,struct page*) ;
 int page_address (struct page*) ;
 scalar_t__ unlikely (int) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;

__attribute__((used)) static int
pn_rx_submit(struct f_phonet *fp, struct usb_request *req, gfp_t gfp_flags)
{
 struct net_device *dev = fp->dev;
 struct page *page;
 int err;

 page = __netdev_alloc_page(dev, gfp_flags);
 if (!page)
  return -ENOMEM;

 req->buf = page_address(page);
 req->length = PAGE_SIZE;
 req->context = page;

 err = usb_ep_queue(fp->out_ep, req, gfp_flags);
 if (unlikely(err))
  netdev_free_page(dev, page);
 return err;
}
