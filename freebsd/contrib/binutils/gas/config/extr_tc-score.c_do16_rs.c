
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relax_inst; int relax_size; } ;


 scalar_t__ FAIL ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reglow_required_here (char**,int) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do16_rs (char *str)
{
  int rd = 0;

  skip_whitespace (str);

  if ((rd = reglow_required_here (&str, 4)) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      inst.relax_inst |= rd << 20;
      inst.relax_size = 4;
    }
}
