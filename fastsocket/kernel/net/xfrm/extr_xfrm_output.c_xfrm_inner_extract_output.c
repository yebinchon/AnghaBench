
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ family; } ;
struct xfrm_state {struct xfrm_mode* inner_mode; TYPE_1__ sel; } ;
struct xfrm_mode {TYPE_3__* afinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* extract_output ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_6__ {int family; } ;


 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 TYPE_4__* skb_dst (struct sk_buff*) ;
 int stub1 (struct xfrm_state*,struct sk_buff*) ;
 int xfrm_af2proto (int ) ;
 struct xfrm_mode* xfrm_ip2inner_mode (struct xfrm_state*,int ) ;

int xfrm_inner_extract_output(struct xfrm_state *x, struct sk_buff *skb)
{
 struct xfrm_mode *inner_mode;
 if (x->sel.family == AF_UNSPEC)
  inner_mode = xfrm_ip2inner_mode(x,
    xfrm_af2proto(skb_dst(skb)->ops->family));
 else
  inner_mode = x->inner_mode;

 if (inner_mode == ((void*)0))
  return -EAFNOSUPPORT;
 return inner_mode->afinfo->extract_output(x, skb);
}
