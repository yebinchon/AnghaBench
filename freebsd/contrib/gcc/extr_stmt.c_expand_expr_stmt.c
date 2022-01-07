
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;


 scalar_t__ BLKmode ;
 int EQ ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 int TYPE_SIZE (int ) ;
 scalar_t__ VOIDmode ;
 int const0_rtx ;
 scalar_t__ copy_to_reg (scalar_t__) ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int ,int ,scalar_t__,int ,scalar_t__) ;
 int emit_label (scalar_t__) ;
 scalar_t__ expand_expr (int ,int ,scalar_t__,int ) ;
 int expand_normal (int ) ;
 int free_temp_slots () ;
 scalar_t__ gen_label_rtx () ;

void
expand_expr_stmt (tree exp)
{
  rtx value;
  tree type;

  value = expand_expr (exp, const0_rtx, VOIDmode, 0);
  type = TREE_TYPE (exp);



  if (value && MEM_P (value) && TREE_THIS_VOLATILE (exp))
    {
      if (TYPE_MODE (type) == VOIDmode)
 ;
      else if (TYPE_MODE (type) != BLKmode)
 value = copy_to_reg (value);
      else
 {
   rtx lab = gen_label_rtx ();


   emit_cmp_and_jump_insns (value, value, EQ,
       expand_normal (TYPE_SIZE (type)),
       BLKmode, 0, lab);
   emit_label (lab);
 }
    }


  free_temp_slots ();
}
