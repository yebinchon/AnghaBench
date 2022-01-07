
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int detach_sc; } ;


 int check_empty (char*,char*) ;
 TYPE_1__* cur_inf () ;
 int printf_unfiltered (char*,int ) ;

__attribute__((used)) static void
show_task_detach_sc_cmd (char *args, int from_tty)
{
  check_empty (args, "show task detach-suspend-count");
  printf_unfiltered ("The inferior task will be left with a suspend count of %d when detaching.\n",
       cur_inf ()->detach_sc);
}
