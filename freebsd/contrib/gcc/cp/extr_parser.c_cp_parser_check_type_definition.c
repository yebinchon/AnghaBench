
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type_definition_forbidden_message; } ;
typedef TYPE_1__ cp_parser ;


 int error (char*,scalar_t__) ;

__attribute__((used)) static bool
cp_parser_check_type_definition (cp_parser* parser)
{

  if (parser->type_definition_forbidden_message)
    {


      error ("%s", parser->type_definition_forbidden_message);
      return 0;
    }
  return 1;
}
