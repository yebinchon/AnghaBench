
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elt_loc_list {int loc; struct elt_loc_list* next; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int val_rtx; } ;
struct TYPE_4__ {struct elt_loc_list* locs; TYPE_1__ u; } ;
typedef TYPE_2__ cselib_val ;


 scalar_t__ CONST ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ rtx_equal_for_cselib_p (int ,int ) ;

__attribute__((used)) static int
entry_and_rtx_equal_p (const void *entry, const void *x_arg)
{
  struct elt_loc_list *l;
  const cselib_val *v = (const cselib_val *) entry;
  rtx x = (rtx) x_arg;
  enum machine_mode mode = GET_MODE (x);

  gcc_assert (GET_CODE (x) != CONST_INT
       && (mode != VOIDmode || GET_CODE (x) != CONST_DOUBLE));

  if (mode != GET_MODE (v->u.val_rtx))
    return 0;


  if (GET_CODE (x) == CONST
      && (GET_CODE (XEXP (x, 0)) == CONST_INT
   || GET_CODE (XEXP (x, 0)) == CONST_DOUBLE))
    x = XEXP (x, 0);



  for (l = v->locs; l; l = l->next)
    if (rtx_equal_for_cselib_p (l->loc, x))
      return 1;

  return 0;
}
