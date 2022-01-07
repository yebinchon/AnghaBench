
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relax_inst; int instruction; int relax_size; } ;


 scalar_t__ FAIL ;
 int _IMM5 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_xi5x (char *str)
{
  skip_whitespace (str);

  if (data_op2 (&str, 15, _IMM5) == (int) FAIL || end_of_line (str) == (int) FAIL)
    return;

  if (inst.relax_inst != 0x8000)
    {
      inst.relax_inst |= (((inst.instruction >> 15) & 0x1f) << 3);
      inst.relax_size = 2;
    }
}
