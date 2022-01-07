
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ segT ;
struct TYPE_4__ {scalar_t__ X_add_number; int X_op; int * X_add_symbol; } ;
typedef TYPE_1__ expressionS ;


 int O_constant ;
 scalar_t__ SEG_NORMAL (scalar_t__) ;
 int S_GET_NAME (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 int _ (char*) ;
 scalar_t__ absolute_section ;
 int as_warn (int ,...) ;
 scalar_t__ expr_section ;
 scalar_t__ get_segmented_expression (TYPE_1__*) ;
 int know (int) ;
 scalar_t__ undefined_section ;

__attribute__((used)) static segT
get_known_segmented_expression (register expressionS *expP)
{
  register segT retval;

  if ((retval = get_segmented_expression (expP)) == undefined_section)
    {


      if (expP->X_add_symbol != ((void*)0)
   && S_GET_SEGMENT (expP->X_add_symbol) != expr_section)
 as_warn (_("symbol \"%s\" undefined; zero assumed"),
   S_GET_NAME (expP->X_add_symbol));
      else
 as_warn (_("some symbol undefined; zero assumed"));
      retval = absolute_section;
      expP->X_op = O_constant;
      expP->X_add_number = 0;
    }
  know (retval == absolute_section || SEG_NORMAL (retval));
  return (retval);
}
