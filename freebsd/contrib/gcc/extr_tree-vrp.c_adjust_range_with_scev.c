
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ min; scalar_t__ max; int equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef scalar_t__ tree ;
struct loop {int num; } ;
typedef enum ev_direction { ____Placeholder_ev_direction } ev_direction ;
struct TYPE_6__ {int * parray; } ;


 size_t CHREC_VARIABLE (scalar_t__) ;
 int EV_DIR_DECREASES ;
 int EV_DIR_UNKNOWN ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 scalar_t__ VR_ANTI_RANGE ;
 scalar_t__ VR_RANGE ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 int analyze_scalar_evolution (struct loop*,scalar_t__) ;
 int compare_values (scalar_t__,scalar_t__) ;
 TYPE_3__* current_loops ;
 scalar_t__ evolution_part_in_loop_num (scalar_t__,int ) ;
 scalar_t__ initial_condition_in_loop_num (scalar_t__,int ) ;
 scalar_t__ instantiate_parameters (struct loop*,int ) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ is_negative_overflow_infinity (scalar_t__) ;
 scalar_t__ is_positive_overflow_infinity (scalar_t__) ;
 scalar_t__ lower_bound_in_type (scalar_t__,scalar_t__) ;
 int scev_direction (scalar_t__) ;
 scalar_t__ scev_probably_wraps_p (scalar_t__,scalar_t__,scalar_t__,int ,int) ;
 int set_value_range (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ upper_bound_in_type (scalar_t__,scalar_t__) ;
 int valid_value_p (scalar_t__) ;

__attribute__((used)) static void
adjust_range_with_scev (value_range_t *vr, struct loop *loop, tree stmt,
   tree var)
{
  tree init, step, chrec, tmin, tmax, min, max, type;
  enum ev_direction dir;



  if (vr->type == VR_ANTI_RANGE)
    return;

  chrec = instantiate_parameters (loop, analyze_scalar_evolution (loop, var));
  if (TREE_CODE (chrec) != POLYNOMIAL_CHREC)
    return;

  init = initial_condition_in_loop_num (chrec, loop->num);
  step = evolution_part_in_loop_num (chrec, loop->num);





  if (step == NULL_TREE
      || !is_gimple_min_invariant (step)
      || !valid_value_p (init))
    return;

  dir = scev_direction (chrec);
  if (

      dir == EV_DIR_UNKNOWN

      || scev_probably_wraps_p (init, step, stmt,
    current_loops->parray[CHREC_VARIABLE (chrec)],
    1))
    return;

  type = TREE_TYPE (var);



  if (POINTER_TYPE_P (type) && is_gimple_min_invariant (init))
    return;






  if (POINTER_TYPE_P (type) || !TYPE_MIN_VALUE (type))
    tmin = lower_bound_in_type (type, type);
  else
    tmin = TYPE_MIN_VALUE (type);
  if (POINTER_TYPE_P (type) || !TYPE_MAX_VALUE (type))
    tmax = upper_bound_in_type (type, type);
  else
    tmax = TYPE_MAX_VALUE (type);

  if (vr->type == VR_VARYING || vr->type == VR_UNDEFINED)
    {
      min = tmin;
      max = tmax;




      if (dir == EV_DIR_DECREASES)
 max = init;
      else
 min = init;





      if (compare_values (min, max) == 1)
 return;

      set_value_range (vr, VR_RANGE, min, max, vr->equiv);
    }
  else if (vr->type == VR_RANGE)
    {
      min = vr->min;
      max = vr->max;

      if (dir == EV_DIR_DECREASES)
 {


   if (compare_values (init, max) == -1)
     {
       max = init;





       if (compare_values (min, max) == 1)
  return;
     }





   if (is_negative_overflow_infinity (min))
     min = tmin;
 }
      else
 {

   if (compare_values (init, min) == 1)
     {
       min = init;


       if (compare_values (min, max) == 1)
  return;
     }

   if (is_positive_overflow_infinity (max))
     max = tmax;
 }

      set_value_range (vr, VR_RANGE, min, max, vr->equiv);
    }
}
