
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; scalar_t__ equiv; int min; int max; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VR_ANTI_RANGE ;
 scalar_t__ VR_RANGE ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 int bitmap_and_into (scalar_t__,scalar_t__) ;
 int bitmap_clear (scalar_t__) ;
 int compare_values (int ,int ) ;
 int copy_value_range (TYPE_1__*,TYPE_1__*) ;
 int gcc_unreachable () ;
 scalar_t__ is_overflow_infinity (int ) ;
 scalar_t__ range_includes_zero_p (TYPE_1__*) ;
 int set_value_range (TYPE_1__*,scalar_t__,int ,int ,scalar_t__) ;
 int set_value_range_to_nonnull (TYPE_1__*,int ) ;
 int set_value_range_to_varying (TYPE_1__*) ;
 int symbolic_range_p (TYPE_1__*) ;
 scalar_t__ value_ranges_intersect_p (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ vrp_val_is_max (int ) ;
 scalar_t__ vrp_val_is_min (int ) ;

__attribute__((used)) static void
vrp_meet (value_range_t *vr0, value_range_t *vr1)
{
  if (vr0->type == VR_UNDEFINED)
    {
      copy_value_range (vr0, vr1);
      return;
    }

  if (vr1->type == VR_UNDEFINED)
    {

      return;
    }

  if (vr0->type == VR_VARYING)
    {

      return;
    }

  if (vr1->type == VR_VARYING)
    {
      set_value_range_to_varying (vr0);
      return;
    }

  if (vr0->type == VR_RANGE && vr1->type == VR_RANGE)
    {


      if (value_ranges_intersect_p (vr0, vr1))
 {
   int cmp;
   tree min, max;




   cmp = compare_values (vr0->min, vr1->min);
   if (cmp == 0 || cmp == 1)
     min = vr1->min;
   else if (cmp == -1)
     min = vr0->min;
   else
     {
       set_value_range_to_varying (vr0);
       return;
     }




   cmp = compare_values (vr0->max, vr1->max);
   if (cmp == 0 || cmp == -1)
     max = vr1->max;
   else if (cmp == 1)
     max = vr0->max;
   else
     {
       set_value_range_to_varying (vr0);
       return;
     }


   if (INTEGRAL_TYPE_P (TREE_TYPE (min))
       && ((vrp_val_is_min (min) || is_overflow_infinity (min))
    && (vrp_val_is_max (max) || is_overflow_infinity (max))))
     {
       set_value_range_to_varying (vr0);
       return;
     }



   if (vr0->equiv && vr1->equiv && vr0->equiv != vr1->equiv)
     bitmap_and_into (vr0->equiv, vr1->equiv);
   else if (vr0->equiv && !vr1->equiv)
     bitmap_clear (vr0->equiv);

   set_value_range (vr0, vr0->type, min, max, vr0->equiv);
 }
      else
 goto no_meet;
    }
  else if (vr0->type == VR_ANTI_RANGE && vr1->type == VR_ANTI_RANGE)
    {

      if (compare_values (vr0->min, vr1->min) == 0
   && compare_values (vr0->max, vr1->max) == 0
   && compare_values (vr0->min, vr0->max) == 0)
 {


   if (vr0->equiv && vr1->equiv && vr0->equiv != vr1->equiv)
     bitmap_and_into (vr0->equiv, vr1->equiv);
   else if (vr0->equiv && !vr1->equiv)
     bitmap_clear (vr0->equiv);
 }
      else
 goto no_meet;
    }
  else if (vr0->type == VR_ANTI_RANGE || vr1->type == VR_ANTI_RANGE)
    {



      if (!symbolic_range_p (vr0)
   && !symbolic_range_p (vr1)
   && !value_ranges_intersect_p (vr0, vr1))
 {



   if (vr1->type == VR_ANTI_RANGE)
     set_value_range (vr0, vr1->type, vr1->min, vr1->max, vr0->equiv);



   if (vr0->equiv && vr1->equiv && vr0->equiv != vr1->equiv)
     bitmap_and_into (vr0->equiv, vr1->equiv);
   else if (vr0->equiv && !vr1->equiv)
     bitmap_clear (vr0->equiv);
 }
      else
 goto no_meet;
    }
  else
    gcc_unreachable ();

  return;

no_meet:





  if (!symbolic_range_p (vr0)
      && ((vr0->type == VR_RANGE && !range_includes_zero_p (vr0))
   || (vr0->type == VR_ANTI_RANGE && range_includes_zero_p (vr0)))
      && !symbolic_range_p (vr1)
      && ((vr1->type == VR_RANGE && !range_includes_zero_p (vr1))
   || (vr1->type == VR_ANTI_RANGE && range_includes_zero_p (vr1))))
    {
      set_value_range_to_nonnull (vr0, TREE_TYPE (vr0->min));



      if (vr0->equiv)
 bitmap_clear (vr0->equiv);
    }
  else
    set_value_range_to_varying (vr0);
}
