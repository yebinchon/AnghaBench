
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int dev; } ;
typedef int __be16 ;


 scalar_t__ CHECKSUM_NONE ;
 int NETIF_F_ALL_CSUM ;
 int NETIF_F_SG ;
 int can_checksum_protocol (int,int ) ;
 scalar_t__ illegal_highdma (int ,struct sk_buff*) ;

__attribute__((used)) static int harmonize_features(struct sk_buff *skb, __be16 protocol, int features)
{
 if (skb->ip_summed != CHECKSUM_NONE &&
     !can_checksum_protocol(features, protocol)) {
  features &= ~NETIF_F_ALL_CSUM;
 } else if (illegal_highdma(skb->dev, skb)) {
  features &= ~NETIF_F_SG;
 }

 return features;
}
