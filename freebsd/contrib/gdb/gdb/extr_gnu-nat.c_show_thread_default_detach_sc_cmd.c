
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_thread_detach_sc; } ;


 int check_empty (char*,char*) ;
 TYPE_1__* cur_inf () ;
 int printf_unfiltered (char*,int ) ;

__attribute__((used)) static void
show_thread_default_detach_sc_cmd (char *args, int from_tty)
{
  check_empty (args, "show thread default detach-suspend-count");
  printf_unfiltered ("New threads will get a detach-suspend-count of %d.\n",
       cur_inf ()->default_thread_detach_sc);
}
