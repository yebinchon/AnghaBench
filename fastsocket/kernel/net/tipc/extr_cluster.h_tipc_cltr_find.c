
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cluster {int dummy; } ;
struct _zone {struct cluster** clusters; } ;


 struct _zone* tipc_zone_find (int ) ;

__attribute__((used)) static inline struct cluster *tipc_cltr_find(u32 addr)
{
 struct _zone *z_ptr = tipc_zone_find(addr);

 if (z_ptr)
  return z_ptr->clusters[1];
 return ((void*)0);
}
