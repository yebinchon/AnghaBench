
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errorcount ;
 scalar_t__ flag_syntax_only ;
 scalar_t__ rtl_dump_and_exit ;
 scalar_t__ sorrycount ;

__attribute__((used)) static bool
gate_rest_of_compilation (void)
{


  return !(rtl_dump_and_exit || flag_syntax_only || errorcount || sorrycount);
}
