
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_tx_hdr {int dummy; } ;
struct TYPE_3__ {int len; } ;
struct untd_hdr_cmp {scalar_t__ padding; TYPE_1__ hdr; } ;
struct sk_buff {scalar_t__ len; } ;
struct i1480u_tx {struct wlp_tx_hdr* wlp_tx_hdr; struct sk_buff* skb; int * buf; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 scalar_t__ __skb_push (struct sk_buff*,int) ;
 int cpu_to_le16 (scalar_t__) ;
 int i1480u_PKT_FRAG_CMP ;
 int skb_headroom (struct sk_buff*) ;
 int untd_hdr_set_rx_tx (TYPE_1__*,int ) ;
 int untd_hdr_set_type (TYPE_1__*,int ) ;

__attribute__((used)) static
int i1480u_tx_create_1(struct i1480u_tx *wtx, struct sk_buff *skb,
         gfp_t gfp_mask)
{
 struct untd_hdr_cmp *untd_hdr_cmp;
 struct wlp_tx_hdr *wlp_tx_hdr;

 wtx->buf = ((void*)0);
 wtx->skb = skb;
 BUG_ON(skb_headroom(skb) < sizeof(*wlp_tx_hdr));
 wlp_tx_hdr = (void *) __skb_push(skb, sizeof(*wlp_tx_hdr));
 wtx->wlp_tx_hdr = wlp_tx_hdr;
 BUG_ON(skb_headroom(skb) < sizeof(*untd_hdr_cmp));
 untd_hdr_cmp = (void *) __skb_push(skb, sizeof(*untd_hdr_cmp));

 untd_hdr_set_type(&untd_hdr_cmp->hdr, i1480u_PKT_FRAG_CMP);
 untd_hdr_set_rx_tx(&untd_hdr_cmp->hdr, 0);
 untd_hdr_cmp->hdr.len = cpu_to_le16(skb->len - sizeof(*untd_hdr_cmp));
 untd_hdr_cmp->padding = 0;
 return 0;
}
