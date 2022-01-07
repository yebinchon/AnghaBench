
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {scalar_t__ gdb_sig; int djgpp_excepno; } ;


 int TARGET_SIGNAL_0 ;
 scalar_t__ TARGET_SIGNAL_LAST ;
 int TARGET_SIGNAL_TRAP ;
 TYPE_1__* excepn_map ;
 int printf_unfiltered (char*,int ) ;
 int resume_is_step ;
 int resume_signal ;
 int target_signal_to_name (int) ;

__attribute__((used)) static void
go32_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  int i;

  resume_is_step = step;

  if (siggnal != TARGET_SIGNAL_0 && siggnal != TARGET_SIGNAL_TRAP)
  {
    for (i = 0, resume_signal = -1;
  excepn_map[i].gdb_sig != TARGET_SIGNAL_LAST; i++)
      if (excepn_map[i].gdb_sig == siggnal)
      {
 resume_signal = excepn_map[i].djgpp_excepno;
 break;
      }
    if (resume_signal == -1)
      printf_unfiltered ("Cannot deliver signal %s on this platform.\n",
    target_signal_to_name (siggnal));
  }
}
