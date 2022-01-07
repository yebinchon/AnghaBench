
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int dummy; } ;
typedef scalar_t__ (* _Unwind_Trace_Fn ) (struct _Unwind_Context*,void*) ;
typedef scalar_t__ _Unwind_Reason_Code ;
typedef int _Unwind_FrameState ;


 scalar_t__ _URC_END_OF_STACK ;
 scalar_t__ _URC_FATAL_PHASE1_ERROR ;
 scalar_t__ _URC_NO_REASON ;
 scalar_t__ stub1 (struct _Unwind_Context*,void*) ;
 scalar_t__ uw_frame_state_for (struct _Unwind_Context*,int *) ;
 int uw_init_context (struct _Unwind_Context*) ;
 int uw_update_context (struct _Unwind_Context*,int *) ;

_Unwind_Reason_Code
_Unwind_Backtrace(_Unwind_Trace_Fn trace, void * trace_argument)
{
  struct _Unwind_Context context;
  _Unwind_Reason_Code code;

  uw_init_context (&context);

  while (1)
    {
      _Unwind_FrameState fs;


      code = uw_frame_state_for (&context, &fs);
      if (code != _URC_NO_REASON && code != _URC_END_OF_STACK)
 return _URC_FATAL_PHASE1_ERROR;


      if ((*trace) (&context, trace_argument) != _URC_NO_REASON)
 return _URC_FATAL_PHASE1_ERROR;


      if (code == _URC_END_OF_STACK)
 break;


      uw_update_context (&context, &fs);
    }

  return code;
}
