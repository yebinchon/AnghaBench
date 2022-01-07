
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_3__ {scalar_t__ (* return_in_memory ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;

 scalar_t__ DECL_BY_REFERENCE (scalar_t__) ;
 scalar_t__ DECL_RESULT (scalar_t__) ;




 scalar_t__ NULL_TREE ;
 int const PARM_DECL ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 int const RESULT_DECL ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 size_t TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ VOID_TYPE ;
 int * call_used_regs ;
 scalar_t__ flag_pcc_struct_return ;
 int gcc_unreachable () ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;
 int hard_function_value (scalar_t__,int ,scalar_t__,int ) ;
 int** hard_regno_nregs ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 TYPE_2__ targetm ;

int
aggregate_value_p (tree exp, tree fntype)
{
  int i, regno, nregs;
  rtx reg;

  tree type = (TYPE_P (exp)) ? exp : TREE_TYPE (exp);




  tree fndecl = NULL_TREE;

  if (fntype)
    switch (TREE_CODE (fntype))
      {
      case 132:
 fndecl = get_callee_fndecl (fntype);
 fntype = fndecl ? TREE_TYPE (fndecl) : 0;
 break;
      case 131:
 fndecl = fntype;
 fntype = TREE_TYPE (fndecl);
 break;
      case 130:
      case 128:
        break;
      case 129:
 fntype = 0;
 break;
      default:

 gcc_unreachable ();
      }

  if (TREE_CODE (type) == VOID_TYPE)
    return 0;



  if ((TREE_CODE (exp) == PARM_DECL || TREE_CODE (exp) == RESULT_DECL)
      && DECL_BY_REFERENCE (exp))
    return 1;







  if (TREE_CODE (exp) == 132 && fndecl && DECL_RESULT (fndecl)
      && DECL_BY_REFERENCE (DECL_RESULT (fndecl)))
    return 1;

  if (targetm.calls.return_in_memory (type, fntype))
    return 1;


  if (TREE_ADDRESSABLE (type))
    return 1;
  if (flag_pcc_struct_return && AGGREGATE_TYPE_P (type))
    return 1;


  reg = hard_function_value (type, 0, fntype, 0);



  if (!REG_P (reg))
    return 0;

  regno = REGNO (reg);
  nregs = hard_regno_nregs[regno][TYPE_MODE (type)];
  for (i = 0; i < nregs; i++)
    if (! call_used_regs[regno + i])
      return 1;
  return 0;
}
