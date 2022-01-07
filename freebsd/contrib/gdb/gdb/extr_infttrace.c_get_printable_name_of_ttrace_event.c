
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttevents_t ;
char *
get_printable_name_of_ttrace_event (ttevents_t event)
{

  switch (event)
    {

    case 133:
      return "TTEVT_NONE";
    case 132:
      return "TTEVT_SIGNAL";
    case 138:
      return "TTEVT_FORK";
    case 140:
      return "TTEVT_EXEC";
    case 139:
      return "TTEVT_EXIT";
    case 128:
      return "TTEVT_VFORK";
    case 129:
      return "TTEVT_SYSCALL_RETURN";
    case 136:
      return "TTEVT_LWP_CREATE";
    case 134:
      return "TTEVT_LWP_TERMINATE";
    case 135:
      return "TTEVT_LWP_EXIT";
    case 137:
      return "TTEVT_LWP_ABORT_SYSCALL";
    case 131:
      return "TTEVT_SYSCALL_ENTRY";
    case 130:
      return "TTEVT_SYSCALL_RESTART";
    default:
      return "?new event?";
    }
}
