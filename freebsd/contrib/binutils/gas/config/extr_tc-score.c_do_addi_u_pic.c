
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int _IMM16_LO16_pic ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_addi_u_pic (char *str)
{
  skip_whitespace (str);

  if (reg_required_here (&str, 20, REG_TYPE_SCORE) != (int) FAIL
      && skip_past_comma (&str) != (int) FAIL
      && data_op2 (&str, 1, _IMM16_LO16_pic) != (int) FAIL)
    end_of_line (str);
}
