
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ada_parse () ;
 int * left_block_context ;
 int lexer_init (int ) ;
 int * type_qualifier ;
 int yyin ;

int
ada_parse ()
{
  lexer_init (yyin);
  left_block_context = ((void*)0);
  type_qualifier = ((void*)0);

  return _ada_parse ();
}
