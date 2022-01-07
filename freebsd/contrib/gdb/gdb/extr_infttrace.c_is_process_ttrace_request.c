
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttreq_t ;


 int IS_TTRACE_PROCREQ (int ) ;

int
is_process_ttrace_request (ttreq_t tt_request)
{
  return IS_TTRACE_PROCREQ (tt_request);
}
