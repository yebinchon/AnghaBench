
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
do16_xi5 (char *str)
{
  skip_whitespace (str);

  if (data_op2 (&str, 3, _IMM5) == (int) FAIL || end_of_line (str) == (int) FAIL)
    return;
  else
    {
      inst.relax_inst |= (((inst.instruction >> 3) & 0x1f) << 15);
      inst.relax_size = 4;
    }
}
