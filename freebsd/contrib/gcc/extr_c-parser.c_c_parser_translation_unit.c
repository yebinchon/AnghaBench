
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_parser ;


 int CPP_EOF ;
 int c_parser_external_declaration (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int ggc_collect () ;
 void* obstack_alloc (int *,int ) ;
 int obstack_free (int *,void*) ;
 int parser_obstack ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;

__attribute__((used)) static void
c_parser_translation_unit (c_parser *parser)
{
  if (c_parser_next_token_is (parser, CPP_EOF))
    {
      if (pedantic)
 pedwarn ("ISO C forbids an empty source file");
    }
  else
    {
      void *obstack_position = obstack_alloc (&parser_obstack, 0);
      do
 {
   ggc_collect ();
   c_parser_external_declaration (parser);
   obstack_free (&parser_obstack, obstack_position);
 }
      while (c_parser_next_token_is_not (parser, CPP_EOF));
    }
}
