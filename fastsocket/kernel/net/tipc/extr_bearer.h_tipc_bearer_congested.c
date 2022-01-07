
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int dummy; } ;
struct TYPE_2__ {int blocked; } ;
struct bearer {int cong_links; TYPE_1__ publ; } ;


 scalar_t__ likely (int ) ;
 int list_empty (int *) ;
 int tipc_bearer_resolve_congestion (struct bearer*,struct link*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int tipc_bearer_congested(struct bearer *b_ptr, struct link *l_ptr)
{
 if (unlikely(b_ptr->publ.blocked))
  return 1;
 if (likely(list_empty(&b_ptr->cong_links)))
  return 0;
 return !tipc_bearer_resolve_congestion(b_ptr, l_ptr);
}
