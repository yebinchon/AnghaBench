
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int _IMM15 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_i15 (char *str)
{
  skip_whitespace (str);

  if (data_op2 (&str, 10, _IMM15) != (int) FAIL)
    end_of_line (str);
}
