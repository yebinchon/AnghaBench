
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ __be32 ;


 scalar_t__ ipv4_is_anycast_6to4 (scalar_t__) ;
 scalar_t__ ipv4_is_lbcast (scalar_t__) ;
 scalar_t__ ipv4_is_linklocal_169 (scalar_t__) ;
 scalar_t__ ipv4_is_loopback (scalar_t__) ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 scalar_t__ ipv4_is_private_10 (scalar_t__) ;
 scalar_t__ ipv4_is_private_172 (scalar_t__) ;
 scalar_t__ ipv4_is_private_192 (scalar_t__) ;
 scalar_t__ ipv4_is_test_192 (scalar_t__) ;
 scalar_t__ ipv4_is_test_198 (scalar_t__) ;
 scalar_t__ ipv4_is_zeronet (scalar_t__) ;
 int memcpy (int*,scalar_t__*,int) ;

int __ipv6_isatap_ifid(u8 *eui, __be32 addr)
{
 if (addr == 0)
  return -1;
 eui[0] = (ipv4_is_zeronet(addr) || ipv4_is_private_10(addr) ||
    ipv4_is_loopback(addr) || ipv4_is_linklocal_169(addr) ||
    ipv4_is_private_172(addr) || ipv4_is_test_192(addr) ||
    ipv4_is_anycast_6to4(addr) || ipv4_is_private_192(addr) ||
    ipv4_is_test_198(addr) || ipv4_is_multicast(addr) ||
    ipv4_is_lbcast(addr)) ? 0x00 : 0x02;
 eui[1] = 0;
 eui[2] = 0x5E;
 eui[3] = 0xFE;
 memcpy(eui + 4, &addr, 4);
 return 0;
}
