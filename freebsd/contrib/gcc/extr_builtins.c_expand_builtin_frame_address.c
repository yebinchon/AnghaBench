
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int * rtx ;


 scalar_t__ BUILT_IN_FRAME_ADDRESS ;
 int CONSTANT_P (int *) ;
 scalar_t__ DECL_FUNCTION_CODE (scalar_t__) ;
 int Pmode ;
 int REG_P (int *) ;
 int TREE_VALUE (scalar_t__) ;
 int * const0_rtx ;
 int * copy_to_mode_reg (int ,int *) ;
 int error (char*) ;
 int * expand_builtin_return_addr (scalar_t__,int ) ;
 int host_integerp (int ,int) ;
 int tree_low_cst (int ,int) ;
 int warning (int ,char*) ;

__attribute__((used)) static rtx
expand_builtin_frame_address (tree fndecl, tree arglist)
{



  if (arglist == 0)

    return const0_rtx;
  else if (! host_integerp (TREE_VALUE (arglist), 1))
    {
      if (DECL_FUNCTION_CODE (fndecl) == BUILT_IN_FRAME_ADDRESS)
 error ("invalid argument to %<__builtin_frame_address%>");
      else
 error ("invalid argument to %<__builtin_return_address%>");
      return const0_rtx;
    }
  else
    {
      rtx tem
 = expand_builtin_return_addr (DECL_FUNCTION_CODE (fndecl),
          tree_low_cst (TREE_VALUE (arglist), 1));


      if (tem == ((void*)0))
 {
   if (DECL_FUNCTION_CODE (fndecl) == BUILT_IN_FRAME_ADDRESS)
     warning (0, "unsupported argument to %<__builtin_frame_address%>");
   else
     warning (0, "unsupported argument to %<__builtin_return_address%>");
   return const0_rtx;
 }


      if (DECL_FUNCTION_CODE (fndecl) == BUILT_IN_FRAME_ADDRESS)
 return tem;

      if (!REG_P (tem)
   && ! CONSTANT_P (tem))
 tem = copy_to_mode_reg (Pmode, tem);
      return tem;
    }
}
