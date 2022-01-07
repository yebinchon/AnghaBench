
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct elt_loc_list {int loc; struct elt_loc_list* next; } ;
typedef int rtx ;
struct TYPE_8__ {int val_rtx; } ;
struct TYPE_9__ {struct TYPE_9__* next_containing_mem; TYPE_1__ u; struct elt_loc_list* locs; int addr_list; } ;
typedef TYPE_2__ cselib_val ;


 TYPE_2__* CSELIB_VAL_PTR (int ) ;
 scalar_t__ MEM_P (int ) ;
 int XEXP (int ,int ) ;
 TYPE_2__* first_containing_mem ;
 int new_elt_list (int ,TYPE_2__*) ;
 struct elt_loc_list* new_elt_loc_list (struct elt_loc_list*,int ) ;
 int replace_equiv_address_nv (int ,int ) ;

__attribute__((used)) static void
add_mem_for_addr (cselib_val *addr_elt, cselib_val *mem_elt, rtx x)
{
  struct elt_loc_list *l;


  for (l = mem_elt->locs; l; l = l->next)
    if (MEM_P (l->loc)
 && CSELIB_VAL_PTR (XEXP (l->loc, 0)) == addr_elt)
      return;

  addr_elt->addr_list = new_elt_list (addr_elt->addr_list, mem_elt);
  mem_elt->locs
    = new_elt_loc_list (mem_elt->locs,
   replace_equiv_address_nv (x, addr_elt->u.val_rtx));
  if (mem_elt->next_containing_mem == ((void*)0))
    {
      mem_elt->next_containing_mem = first_containing_mem;
      first_containing_mem = mem_elt;
    }
}
