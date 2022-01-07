
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ addr_type; scalar_t__ pan_id; scalar_t__ short_addr; int hwaddr; } ;
struct dgram_sock {TYPE_1__ src_addr; int bound; } ;


 int IEEE802154_ADDR_LEN ;
 scalar_t__ IEEE802154_ADDR_LONG ;
 scalar_t__ IEEE802154_ADDR_SHORT ;
 int memcmp (int ,int *,int ) ;

__attribute__((used)) static inline int ieee802154_match_sock(u8 *hw_addr, u16 pan_id,
  u16 short_addr, struct dgram_sock *ro)
{
 if (!ro->bound)
  return 1;

 if (ro->src_addr.addr_type == IEEE802154_ADDR_LONG &&
     !memcmp(ro->src_addr.hwaddr, hw_addr, IEEE802154_ADDR_LEN))
  return 1;

 if (ro->src_addr.addr_type == IEEE802154_ADDR_SHORT &&
       pan_id == ro->src_addr.pan_id &&
       short_addr == ro->src_addr.short_addr)
  return 1;

 return 0;
}
