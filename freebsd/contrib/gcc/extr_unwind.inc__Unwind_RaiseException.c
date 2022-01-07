
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _Unwind_Exception {int private_2; scalar_t__ private_1; int exception_class; } ;
struct _Unwind_Context {int dummy; } ;
typedef scalar_t__ _Unwind_Reason_Code ;
struct TYPE_4__ {scalar_t__ (* personality ) (int,int ,int ,struct _Unwind_Exception*,struct _Unwind_Context*) ;} ;
typedef TYPE_1__ _Unwind_FrameState ;


 int _UA_SEARCH_PHASE ;
 scalar_t__ _URC_CONTINUE_UNWIND ;
 scalar_t__ _URC_END_OF_STACK ;
 scalar_t__ _URC_FATAL_PHASE1_ERROR ;
 scalar_t__ _URC_HANDLER_FOUND ;
 scalar_t__ _URC_INSTALL_CONTEXT ;
 scalar_t__ _URC_NO_REASON ;
 scalar_t__ _Unwind_RaiseException_Phase2 (struct _Unwind_Exception*,struct _Unwind_Context*) ;
 scalar_t__ stub1 (int,int ,int ,struct _Unwind_Exception*,struct _Unwind_Context*) ;
 scalar_t__ uw_frame_state_for (struct _Unwind_Context*,TYPE_1__*) ;
 int uw_identify_context (struct _Unwind_Context*) ;
 int uw_init_context (struct _Unwind_Context*) ;
 int uw_install_context (struct _Unwind_Context*,struct _Unwind_Context*) ;
 int uw_update_context (struct _Unwind_Context*,TYPE_1__*) ;

_Unwind_Reason_Code
_Unwind_RaiseException(struct _Unwind_Exception *exc)
{
  struct _Unwind_Context this_context, cur_context;
  _Unwind_Reason_Code code;


  uw_init_context (&this_context);
  cur_context = this_context;



  while (1)
    {
      _Unwind_FrameState fs;



      code = uw_frame_state_for (&cur_context, &fs);

      if (code == _URC_END_OF_STACK)

 return _URC_END_OF_STACK;

      if (code != _URC_NO_REASON)


 return _URC_FATAL_PHASE1_ERROR;


      if (fs.personality)
 {
   code = (*fs.personality) (1, _UA_SEARCH_PHASE, exc->exception_class,
        exc, &cur_context);
   if (code == _URC_HANDLER_FOUND)
     break;
   else if (code != _URC_CONTINUE_UNWIND)
     return _URC_FATAL_PHASE1_ERROR;
 }


      uw_update_context (&cur_context, &fs);
    }



  exc->private_1 = 0;
  exc->private_2 = uw_identify_context (&cur_context);

  cur_context = this_context;
  code = _Unwind_RaiseException_Phase2 (exc, &cur_context);
  if (code != _URC_INSTALL_CONTEXT)
    return code;

  uw_install_context (&this_context, &cur_context);
}
