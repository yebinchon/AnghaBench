
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct f_phonet {scalar_t__* out_reqv; int out_ep; scalar_t__ in_req; int in_ep; } ;


 struct f_phonet* func_to_pn (struct usb_function*) ;
 int kfree (struct f_phonet*) ;
 int phonet_rxq_size ;
 int usb_ep_free_request (int ,scalar_t__) ;

__attribute__((used)) static void
pn_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct f_phonet *fp = func_to_pn(f);
 int i;


 if (fp->in_req)
  usb_ep_free_request(fp->in_ep, fp->in_req);
 for (i = 0; i < phonet_rxq_size; i++)
  if (fp->out_reqv[i])
   usb_ep_free_request(fp->out_ep, fp->out_reqv[i]);

 kfree(fp);
}
