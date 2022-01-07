
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elfcopy {int flags; int v_grp; int v_rel; } ;
struct TYPE_3__ {int st_info; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ BIT_ISSET (int ,int) ;
 int RELOCATABLE ;
 scalar_t__ is_global_symbol (int ) ;
 scalar_t__ is_weak_symbol (int ) ;

__attribute__((used)) static int
is_needed_symbol(struct elfcopy *ecp, int i, GElf_Sym *s)
{


 if (BIT_ISSET(ecp->v_rel, i))
  return (1);


 if (BIT_ISSET(ecp->v_grp, i))
  return (1);





 if (ecp->flags & RELOCATABLE) {
  if (is_global_symbol(s->st_info) || is_weak_symbol(s->st_info))
   return (1);
 }

 return (0);
}
