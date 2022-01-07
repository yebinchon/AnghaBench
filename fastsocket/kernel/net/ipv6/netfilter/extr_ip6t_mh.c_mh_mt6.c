
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {scalar_t__ fragoff; int* hotdrop; int thoff; struct ip6t_mh* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip6t_mh {int invflags; int * types; } ;
struct ip6_mh {scalar_t__ ip6mh_proto; int ip6mh_type; } ;
typedef int _mh ;


 int IP6T_MH_INV_TYPE ;
 scalar_t__ IPPROTO_NONE ;
 int duprintf (char*,...) ;
 struct ip6_mh* skb_header_pointer (struct sk_buff const*,int ,int,struct ip6_mh*) ;
 int type_match (int ,int ,int ,int) ;

__attribute__((used)) static bool mh_mt6(const struct sk_buff *skb, const struct xt_match_param *par)
{
 struct ip6_mh _mh;
 const struct ip6_mh *mh;
 const struct ip6t_mh *mhinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 mh = skb_header_pointer(skb, par->thoff, sizeof(_mh), &_mh);
 if (mh == ((void*)0)) {


  duprintf("Dropping evil MH tinygram.\n");
  *par->hotdrop = 1;
  return 0;
 }

 if (mh->ip6mh_proto != IPPROTO_NONE) {
  duprintf("Dropping invalid MH Payload Proto: %u\n",
    mh->ip6mh_proto);
  *par->hotdrop = 1;
  return 0;
 }

 return type_match(mhinfo->types[0], mhinfo->types[1], mh->ip6mh_type,
     !!(mhinfo->invflags & IP6T_MH_INV_TYPE));
}
