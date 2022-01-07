
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int _IMM25 ;
 int _IMM5 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_ceinst (char *str)
{
  char *strbak;

  strbak = str;
  skip_whitespace (str);

  if (data_op2 (&str, 20, _IMM5) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || reg_required_here (&str, 15, REG_TYPE_SCORE) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || reg_required_here (&str, 10, REG_TYPE_SCORE) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || data_op2 (&str, 5, _IMM5) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || data_op2 (&str, 0, _IMM5) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      str = strbak;
      if (data_op2 (&str, 0, _IMM25) == (int) FAIL)
 return;
    }
}
