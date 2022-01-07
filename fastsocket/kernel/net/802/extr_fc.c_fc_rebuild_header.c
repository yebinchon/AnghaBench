
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct fcllc {scalar_t__ ethertype; } ;
struct fch_hdr {int daddr; } ;


 int ETH_P_IP ;
 int arp_find (int ,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;
 int printk (char*,int ) ;

__attribute__((used)) static int fc_rebuild_header(struct sk_buff *skb)
{
 return 0;

}
