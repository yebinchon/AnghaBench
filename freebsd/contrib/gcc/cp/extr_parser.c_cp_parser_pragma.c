
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef enum pragma_context { ____Placeholder_pragma_context } pragma_context ;
struct TYPE_18__ {scalar_t__ type; unsigned int pragma_kind; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_19__ {TYPE_16__* lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_17__ {int in_pragma; } ;


 scalar_t__ CPP_PRAGMA ;
 unsigned int PRAGMA_FIRST_EXTERNAL ;
 int c_invoke_pragma_handler (unsigned int) ;
 TYPE_1__* cp_lexer_consume_token (TYPE_16__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_omp_barrier (TYPE_2__*,TYPE_1__*) ;
 int cp_parser_omp_construct (TYPE_2__*,TYPE_1__*) ;
 int cp_parser_omp_flush (TYPE_2__*,TYPE_1__*) ;
 int cp_parser_omp_threadprivate (TYPE_2__*,TYPE_1__*) ;
 int cp_parser_skip_to_pragma_eol (TYPE_2__*,TYPE_1__*) ;
 int error (char*) ;
 int gcc_assert (int) ;

 int pragma_external ;


__attribute__((used)) static bool
cp_parser_pragma (cp_parser *parser, enum pragma_context context)
{
  cp_token *pragma_tok;
  unsigned int id;

  pragma_tok = cp_lexer_consume_token (parser->lexer);
  gcc_assert (pragma_tok->type == CPP_PRAGMA);
  parser->lexer->in_pragma = 1;

  id = pragma_tok->pragma_kind;
  switch (id)
    {
    case 142:
      error ("%<#pragma GCC pch_preprocess%> must be first");
      break;

    case 140:
      switch (context)
 {
 case 129:
   cp_parser_omp_barrier (parser, pragma_tok);
   return 0;
 case 128:
   error ("%<#pragma omp barrier%> may only be "
   "used in compound statements");
   break;
 default:
   goto bad_stmt;
 }
      break;

    case 138:
      switch (context)
 {
 case 129:
   cp_parser_omp_flush (parser, pragma_tok);
   return 0;
 case 128:
   error ("%<#pragma omp flush%> may only be "
   "used in compound statements");
   break;
 default:
   goto bad_stmt;
 }
      break;

    case 130:
      cp_parser_omp_threadprivate (parser, pragma_tok);
      return 0;

    case 141:
    case 139:
    case 137:
    case 136:
    case 135:
    case 134:
    case 132:
    case 131:
      if (context == pragma_external)
 goto bad_stmt;
      cp_parser_omp_construct (parser, pragma_tok);
      return 1;

    case 133:
      error ("%<#pragma omp section%> may only be used in "
      "%<#pragma omp sections%> construct");
      break;

    default:
      gcc_assert (id >= PRAGMA_FIRST_EXTERNAL);
      c_invoke_pragma_handler (id);
      break;

    bad_stmt:
      cp_parser_error (parser, "expected declaration specifiers");
      break;
    }

  cp_parser_skip_to_pragma_eol (parser, pragma_tok);
  return 0;
}
