
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {struct sock** icmp_sk; } ;
struct net {TYPE_1__ ipv4; } ;


 size_t smp_processor_id () ;

__attribute__((used)) static struct sock *icmp_sk(struct net *net)
{
 return net->ipv4.icmp_sk[smp_processor_id()];
}
