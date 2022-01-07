
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct sadb_address {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;

__attribute__((used)) static int present_and_same_family(struct sadb_address *src,
       struct sadb_address *dst)
{
 struct sockaddr *s_addr, *d_addr;

 if (!src || !dst)
  return 0;

 s_addr = (struct sockaddr *)(src + 1);
 d_addr = (struct sockaddr *)(dst + 1);
 if (s_addr->sa_family != d_addr->sa_family)
  return 0;
 if (s_addr->sa_family != AF_INET



  )
  return 0;

 return 1;
}
