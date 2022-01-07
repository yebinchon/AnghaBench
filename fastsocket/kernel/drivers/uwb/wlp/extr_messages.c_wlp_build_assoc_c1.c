
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int dummy; } ;
struct wlp {int dummy; } ;
struct sk_buff {int dummy; } ;


 int WLP_ASSOC_C1 ;
 int wlp_build_assoc_c1c2 (struct wlp*,struct wlp_wss*,struct sk_buff**,int ) ;

__attribute__((used)) static
int wlp_build_assoc_c1(struct wlp *wlp, struct wlp_wss *wss,
         struct sk_buff **skb)
{
 return wlp_build_assoc_c1c2(wlp, wss, skb, WLP_ASSOC_C1);
}
