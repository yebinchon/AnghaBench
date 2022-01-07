
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_data {int mode; int unsignedp; int initial_value; int value; int tree_value; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ACCUMULATE_OUTGOING_ARGS ;
 scalar_t__ CALL_EXPR ;
 int ECF_LIBCALL_BLOCK ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MODE_INT ;
 scalar_t__ REG_P (int ) ;
 int SUBREG_PROMOTED_UNSIGNED_SET (int ,int ) ;
 int SUBREG_PROMOTED_VAR_P (int ) ;
 int TREE_ADDRESSABLE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int convert_modes (int,int,int ,int ) ;
 int expand_normal (int ) ;
 int gcc_assert (int) ;
 int gen_lowpart_SUBREG (int,int ) ;

__attribute__((used)) static void
precompute_arguments (int flags, int num_actuals, struct arg_data *args)
{
  int i;
  if ((flags & ECF_LIBCALL_BLOCK) == 0 && !ACCUMULATE_OUTGOING_ARGS)
    return;

  for (i = 0; i < num_actuals; i++)
    {
      enum machine_mode mode;

      if ((flags & ECF_LIBCALL_BLOCK) == 0
   && TREE_CODE (args[i].tree_value) != CALL_EXPR)
 continue;


      gcc_assert (!TREE_ADDRESSABLE (TREE_TYPE (args[i].tree_value)));

      args[i].initial_value = args[i].value
 = expand_normal (args[i].tree_value);

      mode = TYPE_MODE (TREE_TYPE (args[i].tree_value));
      if (mode != args[i].mode)
 {
   args[i].value
     = convert_modes (args[i].mode, mode,
        args[i].value, args[i].unsignedp);
 }
    }
}
