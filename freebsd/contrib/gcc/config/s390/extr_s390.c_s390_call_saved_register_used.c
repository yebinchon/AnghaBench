
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int CUMULATIVE_ARGS ;


 scalar_t__ ERROR_MARK ;
 int GET_MODE (int ) ;
 int HARD_REGNO_NREGS (int,int ) ;
 int INIT_CUMULATIVE_ARGS (int ,int *,int *,int ,int ) ;
 int Pmode ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int TREE_CHAIN (int) ;
 scalar_t__ TREE_CODE (int) ;
 int TREE_TYPE (int) ;
 int TREE_VALUE (int) ;
 int TYPE_MODE (int) ;
 int build_pointer_type (int) ;
 int * call_used_regs ;
 int gcc_assert (int) ;
 scalar_t__ pass_by_reference (int *,int,int,int) ;
 int s390_function_arg (int *,int,int,int ) ;
 int s390_function_arg_advance (int *,int,int,int ) ;

__attribute__((used)) static bool
s390_call_saved_register_used (tree argument_list)
{
  CUMULATIVE_ARGS cum;
  tree parameter;
  enum machine_mode mode;
  tree type;
  rtx parm_rtx;
  int reg;

  INIT_CUMULATIVE_ARGS (cum, ((void*)0), ((void*)0), 0, 0);

  while (argument_list)
    {
      parameter = TREE_VALUE (argument_list);
      argument_list = TREE_CHAIN (argument_list);

      gcc_assert (parameter);



      if (TREE_CODE (parameter) == ERROR_MARK)
 return 1;

      type = TREE_TYPE (parameter);
      gcc_assert (type);

      mode = TYPE_MODE (type);
      gcc_assert (mode);

      if (pass_by_reference (&cum, mode, type, 1))
  {
    mode = Pmode;
    type = build_pointer_type (type);
  }

       parm_rtx = s390_function_arg (&cum, mode, type, 0);

       s390_function_arg_advance (&cum, mode, type, 0);

       if (parm_rtx && REG_P (parm_rtx))
  {
    for (reg = 0;
  reg < HARD_REGNO_NREGS (REGNO (parm_rtx), GET_MODE (parm_rtx));
  reg++)
      if (! call_used_regs[reg + REGNO (parm_rtx)])
        return 1;
  }
    }
  return 0;
}
