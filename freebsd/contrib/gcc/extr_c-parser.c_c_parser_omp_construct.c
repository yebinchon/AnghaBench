
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
typedef enum pragma_kind { ____Placeholder_pragma_kind } pragma_kind ;
typedef int c_parser ;
struct TYPE_2__ {int pragma_kind; int location; } ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 int c_maybe_initialize_eh () ;
 int c_parser_consume_pragma (int *) ;
 int c_parser_omp_atomic (int *) ;
 scalar_t__ c_parser_omp_critical (int *) ;
 scalar_t__ c_parser_omp_for (int *) ;
 scalar_t__ c_parser_omp_master (int *) ;
 scalar_t__ c_parser_omp_ordered (int *) ;
 scalar_t__ c_parser_omp_parallel (int *) ;
 scalar_t__ c_parser_omp_sections (int *) ;
 scalar_t__ c_parser_omp_single (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int gcc_unreachable () ;

__attribute__((used)) static void
c_parser_omp_construct (c_parser *parser)
{
  enum pragma_kind p_kind;
  location_t loc;
  tree stmt;

  loc = c_parser_peek_token (parser)->location;
  p_kind = c_parser_peek_token (parser)->pragma_kind;
  c_parser_consume_pragma (parser);




  if (p_kind != 135)
    c_maybe_initialize_eh ();

  switch (p_kind)
    {
    case 135:
      c_parser_omp_atomic (parser);
      return;
    case 134:
      stmt = c_parser_omp_critical (parser);
      break;
    case 133:
      stmt = c_parser_omp_for (parser);
      break;
    case 132:
      stmt = c_parser_omp_master (parser);
      break;
    case 131:
      stmt = c_parser_omp_ordered (parser);
      break;
    case 130:
      stmt = c_parser_omp_parallel (parser);
      break;
    case 129:
      stmt = c_parser_omp_sections (parser);
      break;
    case 128:
      stmt = c_parser_omp_single (parser);
      break;
    default:
      gcc_unreachable ();
    }

  if (stmt)
    SET_EXPR_LOCATION (stmt, loc);
}
