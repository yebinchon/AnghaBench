
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BUILT_IN_RETURN_ADDRESS ;
 int DECL_RTL (int ) ;
 int LCT_NORMAL ;
 int MEM_P (int ) ;
 int Pmode ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int const0_rtx ;
 int current_function_decl ;
 int emit_library_call (int ,int ,int ,int,int ,int ,int ,int ) ;
 int expand_builtin_return_addr (int ,int ) ;
 int gcc_assert (int ) ;
 int profile_function_entry_libfunc ;
 int profile_function_exit_libfunc ;

__attribute__((used)) static rtx
expand_builtin_profile_func (bool exitp)
{
  rtx this, which;

  this = DECL_RTL (current_function_decl);
  gcc_assert (MEM_P (this));
  this = XEXP (this, 0);

  if (exitp)
    which = profile_function_exit_libfunc;
  else
    which = profile_function_entry_libfunc;

  emit_library_call (which, LCT_NORMAL, VOIDmode, 2, this, Pmode,
       expand_builtin_return_addr (BUILT_IN_RETURN_ADDRESS,
       0),
       Pmode);

  return const0_rtx;
}
