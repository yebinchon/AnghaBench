
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipip_net {int dummy; } ;
struct ip_tunnel {int parms; } ;


 struct ip_tunnel** __ipip_bucket (struct ipip_net*,int *) ;

__attribute__((used)) static inline struct ip_tunnel **ipip_bucket(struct ipip_net *ipn,
  struct ip_tunnel *t)
{
 return __ipip_bucket(ipn, &t->parms);
}
