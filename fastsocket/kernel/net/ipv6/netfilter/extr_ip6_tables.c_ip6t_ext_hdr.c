
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ IPPROTO_AH ;
 scalar_t__ IPPROTO_DSTOPTS ;
 scalar_t__ IPPROTO_ESP ;
 scalar_t__ IPPROTO_FRAGMENT ;
 scalar_t__ IPPROTO_HOPOPTS ;
 scalar_t__ IPPROTO_NONE ;
 scalar_t__ IPPROTO_ROUTING ;

int
ip6t_ext_hdr(u8 nexthdr)
{
 return ( (nexthdr == IPPROTO_HOPOPTS) ||
   (nexthdr == IPPROTO_ROUTING) ||
   (nexthdr == IPPROTO_FRAGMENT) ||
   (nexthdr == IPPROTO_ESP) ||
   (nexthdr == IPPROTO_AH) ||
   (nexthdr == IPPROTO_NONE) ||
   (nexthdr == IPPROTO_DSTOPTS) );
}
