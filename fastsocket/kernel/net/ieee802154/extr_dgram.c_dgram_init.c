
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int pan_id; int hwaddr; int addr_type; } ;
struct dgram_sock {int want_ack; TYPE_1__ dst_addr; } ;


 int IEEE802154_ADDR_LONG ;
 struct dgram_sock* dgram_sk (struct sock*) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int dgram_init(struct sock *sk)
{
 struct dgram_sock *ro = dgram_sk(sk);

 ro->dst_addr.addr_type = IEEE802154_ADDR_LONG;
 ro->dst_addr.pan_id = 0xffff;
 ro->want_ack = 1;
 memset(&ro->dst_addr.hwaddr, 0xff, sizeof(ro->dst_addr.hwaddr));
 return 0;
}
