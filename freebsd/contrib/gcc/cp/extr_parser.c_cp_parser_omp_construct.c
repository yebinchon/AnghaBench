
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_11__ {int pragma_kind; int location; } ;
typedef TYPE_1__ cp_token ;
typedef int cp_parser ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 int cp_parser_omp_atomic (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_critical (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_for (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_master (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_ordered (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_parallel (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_sections (int *,TYPE_1__*) ;
 scalar_t__ cp_parser_omp_single (int *,TYPE_1__*) ;
 int gcc_unreachable () ;

__attribute__((used)) static void
cp_parser_omp_construct (cp_parser *parser, cp_token *pragma_tok)
{
  tree stmt;

  switch (pragma_tok->pragma_kind)
    {
    case 135:
      cp_parser_omp_atomic (parser, pragma_tok);
      return;
    case 134:
      stmt = cp_parser_omp_critical (parser, pragma_tok);
      break;
    case 133:
      stmt = cp_parser_omp_for (parser, pragma_tok);
      break;
    case 132:
      stmt = cp_parser_omp_master (parser, pragma_tok);
      break;
    case 131:
      stmt = cp_parser_omp_ordered (parser, pragma_tok);
      break;
    case 130:
      stmt = cp_parser_omp_parallel (parser, pragma_tok);
      break;
    case 129:
      stmt = cp_parser_omp_sections (parser, pragma_tok);
      break;
    case 128:
      stmt = cp_parser_omp_single (parser, pragma_tok);
      break;
    default:
      gcc_unreachable ();
    }

  if (stmt)
    SET_EXPR_LOCATION (stmt, pragma_tok->location);
}
