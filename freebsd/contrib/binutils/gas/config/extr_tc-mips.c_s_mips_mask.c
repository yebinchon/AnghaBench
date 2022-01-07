
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long fpreg_mask; long fpreg_offset; long reg_mask; long reg_offset; } ;
typedef TYPE_1__ procS ;


 int ECOFF_DEBUGGING ;
 scalar_t__ IS_ELF ;
 int _ (char*) ;
 int as_warn (int ) ;
 TYPE_1__* cur_proc_ptr ;
 int demand_empty_rest_of_line () ;
 long get_absolute_expression () ;
 char get_absolute_expression_and_terminator (long*) ;
 int input_line_pointer ;
 int s_ignore (int) ;

__attribute__((used)) static void
s_mips_mask (int reg_type)
{
    s_ignore (reg_type);
}
