
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttreq_t ;


 int IS_TTRACE_REQ (int) ;
char *
get_printable_name_of_ttrace_request (ttreq_t request)
{
  if (!IS_TTRACE_REQ (request))
    return "?bad req?";


  switch (request)
    {
    case 134:
      return "TT_PROC_SETTRC";
    case 145:
      return "TT_PROC_ATTACH";
    case 143:
      return "TT_PROC_DETACH";
    case 135:
      return "TT_PROC_RDTEXT";
    case 128:
      return "TT_PROC_WRTEXT";
    case 136:
      return "TT_PROC_RDDATA";
    case 129:
      return "TT_PROC_WRDATA";
    case 130:
      return "TT_PROC_STOP";
    case 144:
      return "TT_PROC_CONTINUE";
    case 137:
      return "TT_PROC_GET_PATHNAME";
    case 141:
      return "TT_PROC_GET_EVENT_MASK";
    case 133:
      return "TT_PROC_SET_EVENT_MASK";
    case 140:
      return "TT_PROC_GET_FIRST_LWP_STATE";
    case 138:
      return "TT_PROC_GET_NEXT_LWP_STATE";
    case 142:
      return "TT_PROC_EXIT";
    case 139:
      return "TT_PROC_GET_MPROTECT";
    case 132:
      return "TT_PROC_SET_MPROTECT";
    case 131:
      return "TT_PROC_SET_SCBM";
    case 147:
      return "TT_LWP_STOP";
    case 153:
      return "TT_LWP_CONTINUE";
    case 148:
      return "TT_LWP_SINGLE";
    case 150:
      return "TT_LWP_RUREGS";
    case 146:
      return "TT_LWP_WUREGS";
    case 152:
      return "TT_LWP_GET_EVENT_MASK";
    case 149:
      return "TT_LWP_SET_EVENT_MASK";
    case 151:
      return "TT_LWP_GET_STATE";
    default:
      return "?new req?";
    }
}
