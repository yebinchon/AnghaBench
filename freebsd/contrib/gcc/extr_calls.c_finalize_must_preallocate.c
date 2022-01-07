
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_size {int constant; } ;
struct arg_data {scalar_t__ partial; scalar_t__ reg; int tree_value; int pass_on_stack; } ;


 scalar_t__ BLKmode ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ TARGET_EXPR ;
 scalar_t__ TREE_ADDRESSABLE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ int_size_in_bytes (int ) ;

__attribute__((used)) static int
finalize_must_preallocate (int must_preallocate, int num_actuals, struct arg_data *args, struct args_size *args_size)
{
  if (! must_preallocate)
    {
      int partial_seen = 0;
      int copy_to_evaluate_size = 0;
      int i;

      for (i = 0; i < num_actuals && ! must_preallocate; i++)
 {
   if (args[i].partial > 0 && ! args[i].pass_on_stack)
     partial_seen = 1;
   else if (partial_seen && args[i].reg == 0)
     must_preallocate = 1;

   if (TYPE_MODE (TREE_TYPE (args[i].tree_value)) == BLKmode
       && (TREE_CODE (args[i].tree_value) == CALL_EXPR
    || TREE_CODE (args[i].tree_value) == TARGET_EXPR
    || TREE_CODE (args[i].tree_value) == COND_EXPR
    || TREE_ADDRESSABLE (TREE_TYPE (args[i].tree_value))))
     copy_to_evaluate_size
       += int_size_in_bytes (TREE_TYPE (args[i].tree_value));
 }

      if (copy_to_evaluate_size * 2 >= args_size->constant
   && args_size->constant > 0)
 must_preallocate = 1;
    }
  return must_preallocate;
}
