
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int begin_function_body () ;
 int cp_parser_ctor_initializer_opt (int *) ;
 int cp_parser_function_body (int *) ;
 int finish_function_body (int ) ;

__attribute__((used)) static bool
cp_parser_ctor_initializer_opt_and_function_body (cp_parser *parser)
{
  tree body;
  bool ctor_initializer_p;


  body = begin_function_body ();

  ctor_initializer_p = cp_parser_ctor_initializer_opt (parser);

  cp_parser_function_body (parser);

  finish_function_body (body);

  return ctor_initializer_p;
}
