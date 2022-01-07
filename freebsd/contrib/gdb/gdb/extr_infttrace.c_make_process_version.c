
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttreq_t ;


 int IS_TTRACE_REQ (int) ;
 int TT_PROC_CONTINUE ;
 int TT_PROC_GET_EVENT_MASK ;
 int TT_PROC_SET_EVENT_MASK ;
 int TT_PROC_STOP ;
 int error (char*) ;

__attribute__((used)) static ttreq_t
make_process_version (ttreq_t request)
{
  if (!IS_TTRACE_REQ (request))
    {
      error ("Internal error, bad ttrace request made\n");
      return -1;
    }

  switch (request)
    {
    case 129:
      return TT_PROC_STOP;

    case 135:
      return TT_PROC_CONTINUE;

    case 134:
      return TT_PROC_GET_EVENT_MASK;

    case 131:
      return TT_PROC_SET_EVENT_MASK;

    case 130:
    case 132:
    case 128:
    case 133:
      return -1;

    default:
      return request;
    }
}
