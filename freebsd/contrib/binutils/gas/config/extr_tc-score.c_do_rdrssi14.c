
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int _SIMM14 ;
 int data_op2 (char**,int,int ) ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_rdrssi14 (char *str)
{
  skip_whitespace (str);

  if (reg_required_here (&str, 20, REG_TYPE_SCORE) != (int) FAIL
      && skip_past_comma (&str) != (int) FAIL
      && reg_required_here (&str, 15, REG_TYPE_SCORE) != (int) FAIL
      && skip_past_comma (&str) != (int) FAIL)
    data_op2 (&str, 1, _SIMM14);
}
