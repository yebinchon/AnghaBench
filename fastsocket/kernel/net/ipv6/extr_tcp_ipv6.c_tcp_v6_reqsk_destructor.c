
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
struct TYPE_2__ {int pktopts; } ;


 TYPE_1__* inet6_rsk (struct request_sock*) ;
 int kfree_skb (int ) ;

__attribute__((used)) static void tcp_v6_reqsk_destructor(struct request_sock *req)
{
 kfree_skb(inet6_rsk(req)->pktopts);
}
