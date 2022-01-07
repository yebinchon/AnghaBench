
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct arg_data {scalar_t__ reg; scalar_t__ value; scalar_t__ mode; int parallel_value; int tree_value; int unsignedp; int pass_on_stack; } ;


 scalar_t__ BLKmode ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ COSTS_N_INSNS (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int LEGITIMATE_CONSTANT_P (scalar_t__) ;
 scalar_t__ PARALLEL ;
 scalar_t__ REG_P (scalar_t__) ;
 int SET ;
 scalar_t__ SMALL_REGISTER_CLASSES ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ convert_modes (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ copy_to_mode_reg (scalar_t__,scalar_t__) ;
 int emit_group_load_into_temps (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ expand_normal (int ) ;
 scalar_t__ force_reg (scalar_t__,scalar_t__) ;
 int int_size_in_bytes (int ) ;
 scalar_t__ optimize ;
 int pop_temp_slots () ;
 int preserve_temp_slots (scalar_t__) ;
 int push_temp_slots () ;
 scalar_t__ rtx_cost (scalar_t__,int ) ;

__attribute__((used)) static void
precompute_register_parameters (int num_actuals, struct arg_data *args,
    int *reg_parm_seen)
{
  int i;

  *reg_parm_seen = 0;

  for (i = 0; i < num_actuals; i++)
    if (args[i].reg != 0 && ! args[i].pass_on_stack)
      {
 *reg_parm_seen = 1;

 if (args[i].value == 0)
   {
     push_temp_slots ();
     args[i].value = expand_normal (args[i].tree_value);
     preserve_temp_slots (args[i].value);
     pop_temp_slots ();
   }



 if (CONSTANT_P (args[i].value)
     && !LEGITIMATE_CONSTANT_P (args[i].value))
   args[i].value = force_reg (args[i].mode, args[i].value);




 if (args[i].mode != TYPE_MODE (TREE_TYPE (args[i].tree_value)))
   args[i].value
     = convert_modes (args[i].mode,
        TYPE_MODE (TREE_TYPE (args[i].tree_value)),
        args[i].value, args[i].unsignedp);




 if (GET_CODE (args[i].reg) == PARALLEL)
   {
     tree type = TREE_TYPE (args[i].tree_value);
     args[i].parallel_value
       = emit_group_load_into_temps (args[i].reg, args[i].value,
         type, int_size_in_bytes (type));
   }
 else if ((! (REG_P (args[i].value)
       || (GET_CODE (args[i].value) == SUBREG
    && REG_P (SUBREG_REG (args[i].value)))))
   && args[i].mode != BLKmode
   && rtx_cost (args[i].value, SET) > COSTS_N_INSNS (1)
   && ((SMALL_REGISTER_CLASSES && *reg_parm_seen)
       || optimize))
   args[i].value = copy_to_mode_reg (args[i].mode, args[i].value);
      }
}
