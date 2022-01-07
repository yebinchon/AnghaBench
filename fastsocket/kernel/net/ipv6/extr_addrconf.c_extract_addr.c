
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;


 struct in6_addr* nla_data (struct nlattr*) ;
 scalar_t__ nla_memcmp (struct nlattr*,struct in6_addr*,int) ;

__attribute__((used)) static struct in6_addr *extract_addr(struct nlattr *addr, struct nlattr *local)
{
 struct in6_addr *pfx = ((void*)0);

 if (addr)
  pfx = nla_data(addr);

 if (local) {
  if (pfx && nla_memcmp(local, pfx, sizeof(*pfx)))
   pfx = ((void*)0);
  else
   pfx = nla_data(local);
 }

 return pfx;
}
