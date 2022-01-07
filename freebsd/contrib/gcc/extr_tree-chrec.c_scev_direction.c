
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum ev_direction { ____Placeholder_ev_direction } ev_direction ;


 int CHREC_RIGHT (int ) ;
 int EV_DIR_DECREASES ;
 int EV_DIR_GROWS ;
 int EV_DIR_UNKNOWN ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int evolution_function_is_affine_p (int ) ;
 scalar_t__ tree_int_cst_sign_bit (int ) ;

enum ev_direction
scev_direction (tree chrec)
{
  tree step;

  if (!evolution_function_is_affine_p (chrec))
    return EV_DIR_UNKNOWN;

  step = CHREC_RIGHT (chrec);
  if (TREE_CODE (step) != INTEGER_CST)
    return EV_DIR_UNKNOWN;

  if (tree_int_cst_sign_bit (step))
    return EV_DIR_DECREASES;
  else
    return EV_DIR_GROWS;
}
