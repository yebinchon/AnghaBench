
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int badvaddr; } ;


 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;
 int monitor_expect (char*,int *,int ) ;
 int monitor_expect_prompt (char*,int) ;
 int monitor_printf (char*) ;
 int monitor_supply_register (int ,char*) ;

__attribute__((used)) static void
fetch_bad_vaddr (void)
{
  char buf[20];

  monitor_printf ("xB\r");
  monitor_expect ("BadV=", ((void*)0), 0);
  monitor_expect_prompt (buf, sizeof (buf));
  monitor_supply_register (mips_regnum (current_gdbarch)->badvaddr, buf);
}
