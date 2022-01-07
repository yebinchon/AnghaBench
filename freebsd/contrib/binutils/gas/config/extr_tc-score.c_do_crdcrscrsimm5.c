
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE_CR ;
 int _IMM20 ;
 int _IMM5 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_crdcrscrsimm5 (char *str)
{
  char *strbak;

  strbak = str;
  skip_whitespace (str);

  if (reg_required_here (&str, 20, REG_TYPE_SCORE_CR) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || reg_required_here (&str, 15, REG_TYPE_SCORE_CR) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || reg_required_here (&str, 10, REG_TYPE_SCORE_CR) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL)
    {
      str = strbak;

      if (data_op2 (&str, 5, _IMM20) == (int) FAIL)
 return;
    }
  else
    {
      if (data_op2 (&str, 5, _IMM5) == (int) FAIL)
 return;
    }

  end_of_line (str);
}
