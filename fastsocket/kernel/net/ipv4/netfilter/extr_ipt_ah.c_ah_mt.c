
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {scalar_t__ fragoff; int* hotdrop; int thoff; struct ipt_ah* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_ah {int invflags; int * spis; } ;
struct ip_auth_hdr {int spi; } ;
typedef int _ahdr ;


 int IPT_AH_INV_SPI ;
 int duprintf (char*) ;
 int ntohl (int ) ;
 struct ip_auth_hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct ip_auth_hdr*) ;
 int spi_match (int ,int ,int ,int) ;

__attribute__((used)) static bool ah_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 struct ip_auth_hdr _ahdr;
 const struct ip_auth_hdr *ah;
 const struct ipt_ah *ahinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 ah = skb_header_pointer(skb, par->thoff, sizeof(_ahdr), &_ahdr);
 if (ah == ((void*)0)) {



  duprintf("Dropping evil AH tinygram.\n");
  *par->hotdrop = 1;
  return 0;
 }

 return spi_match(ahinfo->spis[0], ahinfo->spis[1],
    ntohl(ah->spi),
    !!(ahinfo->invflags & IPT_AH_INV_SPI));
}
