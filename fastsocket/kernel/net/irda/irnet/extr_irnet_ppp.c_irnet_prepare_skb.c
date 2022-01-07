
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned char* data; } ;
struct TYPE_4__ {int flags; scalar_t__ max_header_size; } ;
typedef TYPE_1__ irnet_socket ;


 int DABORT (int ,int *,int ,char*) ;
 int DEBUG (int ,char*) ;
 int DENTER (int ,char*,TYPE_1__*,struct sk_buff*) ;
 int DEXIT (int ,char*) ;
 unsigned char PPP_ALLSTATIONS ;
 int PPP_ERROR ;
 int PPP_INFO ;
 int PPP_LCP ;
 int PPP_TRACE ;
 unsigned char PPP_UI ;
 int SC_COMP_AC ;
 int SC_COMP_PROT ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_shared (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *
irnet_prepare_skb(irnet_socket * ap,
    struct sk_buff * skb)
{
  unsigned char * data;
  int proto;
  int islcp;
  int needaddr;

  DENTER(PPP_TRACE, "(ap=0x%p, skb=0x%p)\n",
  ap, skb);


  data = skb->data;
  proto = (data[0] << 8) + data[1];




  islcp = (proto == PPP_LCP) && (1 <= data[2]) && (data[2] <= 7);


  if((data[0] == 0) && (ap->flags & SC_COMP_PROT) && (!islcp))
    skb_pull(skb,1);


  needaddr = 2*((ap->flags & SC_COMP_AC) == 0 || islcp);


  if((skb_headroom(skb) < (ap->max_header_size + needaddr)) ||
      (skb_shared(skb)))
    {
      struct sk_buff * new_skb;

      DEBUG(PPP_INFO, "Reallocating skb\n");


      new_skb = skb_realloc_headroom(skb, ap->max_header_size + needaddr);


      dev_kfree_skb(skb);


      DABORT(new_skb == ((void*)0), ((void*)0), PPP_ERROR, "Could not realloc skb\n");


      skb = new_skb;
    }


  if(needaddr)
    {
      skb_push(skb, 2);
      skb->data[0] = PPP_ALLSTATIONS;
      skb->data[1] = PPP_UI;
    }

  DEXIT(PPP_TRACE, "\n");

  return skb;
}
