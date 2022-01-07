
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct TYPE_2__ {int tmp; } ;


 TYPE_1__* ESP_SKB_CB (struct sk_buff*) ;
 int kfree (int ) ;
 int xfrm_output_resume (struct sk_buff*,int) ;

__attribute__((used)) static void esp_output_done(struct crypto_async_request *base, int err)
{
 struct sk_buff *skb = base->data;

 kfree(ESP_SKB_CB(skb)->tmp);
 xfrm_output_resume(skb, err);
}
