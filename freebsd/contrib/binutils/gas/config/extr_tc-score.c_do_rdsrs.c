
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; } ;


 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int REG_TYPE_SCORE_SR ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_rdsrs (char *str)
{
  skip_whitespace (str);


  if ((inst.instruction & 0xff) == 0x50)
    {
      if (reg_required_here (&str, 20, REG_TYPE_SCORE) != (int) FAIL
          && skip_past_comma (&str) != (int) FAIL
          && reg_required_here (&str, 10, REG_TYPE_SCORE_SR) != (int) FAIL)
 end_of_line (str);
    }
  else
    {
      if (reg_required_here (&str, 15, REG_TYPE_SCORE) != (int) FAIL
          && skip_past_comma (&str) != (int) FAIL)
 reg_required_here (&str, 10, REG_TYPE_SCORE_SR);
    }
}
