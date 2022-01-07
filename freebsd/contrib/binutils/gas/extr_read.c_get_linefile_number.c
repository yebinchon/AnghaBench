
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int get_absolute_expression () ;
 char* input_line_pointer ;

__attribute__((used)) static int
get_linefile_number (int *flag)
{
  SKIP_WHITESPACE ();

  if (*input_line_pointer < '0' || *input_line_pointer > '9')
    return 0;

  *flag = get_absolute_expression ();

  return 1;
}
