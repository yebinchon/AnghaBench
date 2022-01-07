
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_value_t ;
typedef int TTRACE_ARG_TYPE ;


 int TT_LWP_RUREGS ;
 int call_ttrace (int ,int,int ,int ,int ) ;

int
read_from_register_save_state (int tid, TTRACE_ARG_TYPE ss_offset, char *buf,
          int sizeof_buf)
{
  int tt_status;
  register_value_t register_value = 0;

  tt_status = call_ttrace (TT_LWP_RUREGS,
      tid,
      ss_offset,
      (TTRACE_ARG_TYPE) sizeof_buf,
      (TTRACE_ARG_TYPE) buf);

  if (tt_status == 1)



    return 0;

  return tt_status;
}
