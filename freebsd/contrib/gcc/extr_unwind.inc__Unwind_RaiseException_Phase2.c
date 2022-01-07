
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _Unwind_Exception {scalar_t__ private_2; int exception_class; } ;
struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Reason_Code ;
struct TYPE_4__ {int (* personality ) (int,int,int ,struct _Unwind_Exception*,struct _Unwind_Context*) ;} ;
typedef TYPE_1__ _Unwind_FrameState ;


 int _UA_CLEANUP_PHASE ;
 int _UA_HANDLER_FRAME ;
 int _URC_CONTINUE_UNWIND ;
 int _URC_FATAL_PHASE2_ERROR ;
 int _URC_INSTALL_CONTEXT ;
 int _URC_NO_REASON ;
 int gcc_assert (int) ;
 int stub1 (int,int,int ,struct _Unwind_Exception*,struct _Unwind_Context*) ;
 int uw_frame_state_for (struct _Unwind_Context*,TYPE_1__*) ;
 scalar_t__ uw_identify_context (struct _Unwind_Context*) ;
 int uw_update_context (struct _Unwind_Context*,TYPE_1__*) ;

__attribute__((used)) static _Unwind_Reason_Code
_Unwind_RaiseException_Phase2(struct _Unwind_Exception *exc,
         struct _Unwind_Context *context)
{
  _Unwind_Reason_Code code;

  while (1)
    {
      _Unwind_FrameState fs;
      int match_handler;

      code = uw_frame_state_for (context, &fs);


      match_handler = (uw_identify_context (context) == exc->private_2
         ? _UA_HANDLER_FRAME : 0);

      if (code != _URC_NO_REASON)


 return _URC_FATAL_PHASE2_ERROR;


      if (fs.personality)
 {
   code = (*fs.personality) (1, _UA_CLEANUP_PHASE | match_handler,
        exc->exception_class, exc, context);
   if (code == _URC_INSTALL_CONTEXT)
     break;
   if (code != _URC_CONTINUE_UNWIND)
     return _URC_FATAL_PHASE2_ERROR;
 }


      gcc_assert (!match_handler);

      uw_update_context (context, &fs);
    }

  return code;
}
