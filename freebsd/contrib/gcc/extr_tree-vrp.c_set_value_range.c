
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int * equiv; scalar_t__ max; scalar_t__ min; } ;
typedef TYPE_1__ value_range_t ;
typedef scalar_t__ tree ;
typedef enum value_range_type { ____Placeholder_value_range_type } value_range_type ;
typedef int * bitmap ;


 int * BITMAP_ALLOC (int *) ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ NULL_TREE ;
 int TREE_TYPE (scalar_t__) ;
 int VR_ANTI_RANGE ;
 int VR_RANGE ;
 int VR_UNDEFINED ;
 int VR_VARYING ;
 int bitmap_clear (int *) ;
 int bitmap_copy (int *,int *) ;
 scalar_t__ bitmap_empty_p (int *) ;
 int compare_values (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 int is_overflow_infinity (scalar_t__) ;
 scalar_t__ needs_overflow_infinity (int ) ;
 int vrp_val_is_max (scalar_t__) ;
 int vrp_val_is_min (scalar_t__) ;

__attribute__((used)) static void
set_value_range (value_range_t *vr, enum value_range_type t, tree min,
   tree max, bitmap equiv)
{
  vr->type = t;
  vr->min = min;
  vr->max = max;



  if (vr->equiv == ((void*)0))
    vr->equiv = BITMAP_ALLOC (((void*)0));

  if (equiv != vr->equiv)
    {
      if (equiv && !bitmap_empty_p (equiv))
 bitmap_copy (vr->equiv, equiv);
      else
 bitmap_clear (vr->equiv);
    }
}
