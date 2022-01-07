
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elt_loc_list {int loc; struct elt_loc_list* next; } ;
typedef int rtx ;
struct TYPE_3__ {struct elt_loc_list* locs; } ;
typedef TYPE_1__ cselib_val ;


 scalar_t__ CONSTANT_P (int ) ;
 TYPE_1__* CSELIB_VAL_PTR (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int MEM_P (int ) ;
 int REG_P (int ) ;
 scalar_t__ VALUE ;

rtx
get_addr (rtx x)
{
  cselib_val *v;
  struct elt_loc_list *l;

  if (GET_CODE (x) != VALUE)
    return x;
  v = CSELIB_VAL_PTR (x);
  if (v)
    {
      for (l = v->locs; l; l = l->next)
 if (CONSTANT_P (l->loc))
   return l->loc;
      for (l = v->locs; l; l = l->next)
 if (!REG_P (l->loc) && !MEM_P (l->loc))
   return l->loc;
      if (v->locs)
 return v->locs->loc;
    }
  return x;
}
