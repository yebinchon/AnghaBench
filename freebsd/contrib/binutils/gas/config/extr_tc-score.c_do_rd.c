
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int end_of_line (char*) ;
 int reg_required_here (char**,int,int ) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_rd (char *str)
{
  skip_whitespace (str);

  if (reg_required_here (&str, 20, REG_TYPE_SCORE) != (int) FAIL)
    end_of_line (str);
}
