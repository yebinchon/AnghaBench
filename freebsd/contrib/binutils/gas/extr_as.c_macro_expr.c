
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* ptr; } ;
typedef TYPE_1__ sb ;
struct TYPE_7__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef TYPE_2__ expressionS ;


 scalar_t__ O_constant ;
 int as_bad (char*,char const*) ;
 int expression_and_evaluate (TYPE_2__*) ;
 char* input_line_pointer ;
 int sb_terminate (TYPE_1__*) ;

__attribute__((used)) static int
macro_expr (const char *emsg, int idx, sb *in, int *val)
{
  char *hold;
  expressionS ex;

  sb_terminate (in);

  hold = input_line_pointer;
  input_line_pointer = in->ptr + idx;
  expression_and_evaluate (&ex);
  idx = input_line_pointer - in->ptr;
  input_line_pointer = hold;

  if (ex.X_op != O_constant)
    as_bad ("%s", emsg);

  *val = (int) ex.X_add_number;

  return idx;
}
