
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_net {int dummy; } ;
struct ip_tunnel {int parms; } ;


 struct ip_tunnel** __ipip6_bucket (struct sit_net*,int *) ;

__attribute__((used)) static inline struct ip_tunnel **ipip6_bucket(struct sit_net *sitn,
  struct ip_tunnel *t)
{
 return __ipip6_bucket(sitn, &t->parms);
}
