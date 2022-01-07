
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ ether_addr_equal (int const*,int const*) ;
 scalar_t__ is_broadcast_ether_addr (int const*) ;

__attribute__((used)) static inline int ieee80211_bssid_match(const u8 *raddr, const u8 *addr)
{
 return ether_addr_equal(raddr, addr) ||
        is_broadcast_ether_addr(raddr);
}
