
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tunnel {int dummy; } ;


 unsigned short AF_INET ;
 struct xfrm_tunnel* tunnel4_handlers ;
 struct xfrm_tunnel* tunnel64_handlers ;

__attribute__((used)) static inline struct xfrm_tunnel **fam_handlers(unsigned short family)
{
 return (family == AF_INET) ? &tunnel4_handlers : &tunnel64_handlers;
}
