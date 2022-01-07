
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int dummy; } ;


 int disp_del ;
 int do_enable_breakpoint (struct breakpoint*,int ) ;

__attribute__((used)) static void
enable_delete_breakpoint (struct breakpoint *bpt)
{
  do_enable_breakpoint (bpt, disp_del);
}
