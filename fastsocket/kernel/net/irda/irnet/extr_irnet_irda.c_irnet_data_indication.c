
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned char* data; int len; } ;
struct TYPE_3__ {int chan; int ppp_open; } ;
typedef TYPE_1__ irnet_socket ;


 int DASSERT (int ,int ,int ,char*) ;
 int DENTER (int ,char*,TYPE_1__*,struct sk_buff*) ;
 int DERROR (int ,char*) ;
 int DEXIT (int ,char*) ;
 int ENOMEM ;
 int IRDA_CB_ERROR ;
 int IRDA_TCB_TRACE ;
 unsigned char PPP_ALLSTATIONS ;
 unsigned char PPP_UI ;
 int kfree_skb (struct sk_buff*) ;
 int ppp_input (int *,struct sk_buff*) ;
 int ppp_input_error (int *,int) ;
 unsigned char* skb_pull (struct sk_buff*,int) ;
 scalar_t__* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int
irnet_data_indication(void * instance,
        void * sap,
        struct sk_buff *skb)
{
  irnet_socket * ap = (irnet_socket *) instance;
  unsigned char * p;
  int code = 0;

  DENTER(IRDA_TCB_TRACE, "(self/ap=0x%p, skb=0x%p)\n",
  ap, skb);
  DASSERT(skb != ((void*)0), 0, IRDA_CB_ERROR, "skb is NULL !!!\n");


  if(!ap->ppp_open)
    {
      DERROR(IRDA_CB_ERROR, "PPP not ready, dropping packet...\n");



      return -ENOMEM;
    }


  p = skb->data;
  if((p[0] == PPP_ALLSTATIONS) && (p[1] == PPP_UI))
    {

      if(skb->len < 3)
 goto err_exit;
      p = skb_pull(skb, 2);
    }


  if(p[0] & 1)
    {

      skb_push(skb, 1)[0] = 0;
    }
  else
    if(skb->len < 2)
      goto err_exit;




  ppp_input(&ap->chan, skb);

  DEXIT(IRDA_TCB_TRACE, "\n");
  return 0;

 err_exit:
  DERROR(IRDA_CB_ERROR, "Packet too small, dropping...\n");
  kfree_skb(skb);
  ppp_input_error(&ap->chan, code);
  return 0;
}
