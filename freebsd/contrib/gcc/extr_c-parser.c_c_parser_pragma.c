
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef enum pragma_context { ____Placeholder_pragma_context } pragma_context ;
struct TYPE_13__ {int error; } ;
typedef TYPE_1__ c_parser ;
struct TYPE_14__ {unsigned int pragma_kind; } ;


 int CPP_PRAGMA_EOL ;
 unsigned int PRAGMA_FIRST_EXTERNAL ;

 unsigned int PRAGMA_NONE ;




 int c_invoke_pragma_handler (unsigned int) ;
 int c_parser_consume_pragma (TYPE_1__*) ;
 int c_parser_error (TYPE_1__*,char*) ;
 int c_parser_omp_barrier (TYPE_1__*) ;
 int c_parser_omp_construct (TYPE_1__*) ;
 int c_parser_omp_flush (TYPE_1__*) ;
 int c_parser_omp_threadprivate (TYPE_1__*) ;
 TYPE_5__* c_parser_peek_token (TYPE_1__*) ;
 int c_parser_skip_to_pragma_eol (TYPE_1__*) ;
 int c_parser_skip_until_found (TYPE_1__*,int ,int *) ;
 int error (char*) ;
 int gcc_assert (int) ;
 int pragma_compound ;
 int pragma_external ;
 int pragma_stmt ;

__attribute__((used)) static bool
c_parser_pragma (c_parser *parser, enum pragma_context context)
{
  unsigned int id;

  id = c_parser_peek_token (parser)->pragma_kind;
  gcc_assert (id != PRAGMA_NONE);

  switch (id)
    {
    case 131:
      if (context != pragma_compound)
 {
   if (context == pragma_stmt)
     c_parser_error (parser, "%<#pragma omp barrier%> may only be "
       "used in compound statements");
   goto bad_stmt;
 }
      c_parser_omp_barrier (parser);
      return 0;

    case 130:
      if (context != pragma_compound)
 {
   if (context == pragma_stmt)
     c_parser_error (parser, "%<#pragma omp flush%> may only be "
       "used in compound statements");
   goto bad_stmt;
 }
      c_parser_omp_flush (parser);
      return 0;

    case 128:
      c_parser_omp_threadprivate (parser);
      return 0;

    case 129:
      error ("%<#pragma omp section%> may only be used in "
      "%<#pragma omp sections%> construct");
      c_parser_skip_until_found (parser, CPP_PRAGMA_EOL, ((void*)0));
      return 0;

    case 132:
      c_parser_error (parser, "%<#pragma GCC pch_preprocess%> must be first");
      c_parser_skip_until_found (parser, CPP_PRAGMA_EOL, ((void*)0));
      return 0;

    default:
      if (id < PRAGMA_FIRST_EXTERNAL)
 {
   if (context == pragma_external)
     {
     bad_stmt:
       c_parser_error (parser, "expected declaration specifiers");
       c_parser_skip_until_found (parser, CPP_PRAGMA_EOL, ((void*)0));
       return 0;
     }
   c_parser_omp_construct (parser);
   return 1;
 }
      break;
    }

  c_parser_consume_pragma (parser);
  c_invoke_pragma_handler (id);




  parser->error = 1;
  c_parser_skip_to_pragma_eol (parser);

  return 0;
}
