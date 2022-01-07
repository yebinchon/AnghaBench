
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_option ;
 int disassembly_style ;
 int num_disassembly_options ;
 int set_disassembly_style () ;
 int * valid_disassembly_styles ;

__attribute__((used)) static void
arm_othernames (char *names, int n)
{

  current_option = (current_option + 1) % num_disassembly_options;

  disassembly_style = valid_disassembly_styles[current_option];
  set_disassembly_style ();
}
