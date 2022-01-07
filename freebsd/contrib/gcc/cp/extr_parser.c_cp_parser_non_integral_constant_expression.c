
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int non_integral_constant_expression_p; int allow_non_integral_constant_expression_p; scalar_t__ integral_constant_expression_p; } ;
typedef TYPE_1__ cp_parser ;


 int error (char*,char const*) ;

__attribute__((used)) static bool
cp_parser_non_integral_constant_expression (cp_parser *parser,
         const char *thing)
{
  parser->non_integral_constant_expression_p = 1;
  if (parser->integral_constant_expression_p)
    {
      if (!parser->allow_non_integral_constant_expression_p)
 {
   error ("%s cannot appear in a constant-expression", thing);
   return 1;
 }
    }
  return 0;
}
