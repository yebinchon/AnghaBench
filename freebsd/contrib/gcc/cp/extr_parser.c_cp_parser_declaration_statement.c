
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp_parser ;


 int cp_parser_block_declaration (int *,int) ;
 int declarator_obstack ;
 int finish_stmt () ;
 void* obstack_alloc (int *,int ) ;
 int obstack_free (int *,void*) ;

__attribute__((used)) static void
cp_parser_declaration_statement (cp_parser* parser)
{
  void *p;


  p = obstack_alloc (&declarator_obstack, 0);


  cp_parser_block_declaration (parser, 1);


  obstack_free (&declarator_obstack, p);


  finish_stmt ();
}
