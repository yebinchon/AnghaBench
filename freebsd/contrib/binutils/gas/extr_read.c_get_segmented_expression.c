
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int segT ;
struct TYPE_4__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ O_absent ;
 scalar_t__ O_big ;
 scalar_t__ O_constant ;
 scalar_t__ O_illegal ;
 int _ (char*) ;
 int absolute_section ;
 int as_bad (int ) ;
 int expression (TYPE_1__*) ;

__attribute__((used)) static segT
get_segmented_expression (register expressionS *expP)
{
  register segT retval;

  retval = expression (expP);
  if (expP->X_op == O_illegal
      || expP->X_op == O_absent
      || expP->X_op == O_big)
    {
      as_bad (_("expected address expression"));
      expP->X_op = O_constant;
      expP->X_add_number = 0;
      retval = absolute_section;
    }
  return retval;
}
