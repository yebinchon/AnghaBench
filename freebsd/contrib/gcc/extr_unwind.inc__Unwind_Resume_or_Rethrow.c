
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Exception {scalar_t__ private_1; } ;
struct _Unwind_Context {int dummy; } ;
typedef scalar_t__ _Unwind_Reason_Code ;


 scalar_t__ _URC_INSTALL_CONTEXT ;
 scalar_t__ _Unwind_ForcedUnwind_Phase2 (struct _Unwind_Exception*,struct _Unwind_Context*) ;
 scalar_t__ _Unwind_RaiseException (struct _Unwind_Exception*) ;
 int gcc_assert (int) ;
 int uw_init_context (struct _Unwind_Context*) ;
 int uw_install_context (struct _Unwind_Context*,struct _Unwind_Context*) ;

_Unwind_Reason_Code
_Unwind_Resume_or_Rethrow (struct _Unwind_Exception *exc)
{
  struct _Unwind_Context this_context, cur_context;
  _Unwind_Reason_Code code;



  if (exc->private_1 == 0)
    return _Unwind_RaiseException (exc);

  uw_init_context (&this_context);
  cur_context = this_context;

  code = _Unwind_ForcedUnwind_Phase2 (exc, &cur_context);

  gcc_assert (code == _URC_INSTALL_CONTEXT);

  uw_install_context (&this_context, &cur_context);
}
