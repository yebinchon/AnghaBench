
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int hwaddr; int addr_type; } ;
struct dgram_sock {TYPE_1__ dst_addr; } ;


 int IEEE802154_ADDR_LONG ;
 struct dgram_sock* dgram_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int memset (int *,int,int) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int dgram_disconnect(struct sock *sk, int flags)
{
 struct dgram_sock *ro = dgram_sk(sk);

 lock_sock(sk);

 ro->dst_addr.addr_type = IEEE802154_ADDR_LONG;
 memset(&ro->dst_addr.hwaddr, 0xff, sizeof(ro->dst_addr.hwaddr));

 release_sock(sk);

 return 0;
}
