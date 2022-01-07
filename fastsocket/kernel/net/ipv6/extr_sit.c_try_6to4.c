
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int * s6_addr16; } ;
typedef int __be32 ;


 int htons (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline __be32 try_6to4(struct in6_addr *v6dst)
{
 __be32 dst = 0;

 if (v6dst->s6_addr16[0] == htons(0x2002)) {

  memcpy(&dst, &v6dst->s6_addr16[1], 4);
 }
 return dst;
}
