
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ pragma_omp_clause ;
struct TYPE_6__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_5__ {int value; } ;
struct TYPE_7__ {TYPE_1__ u; } ;


 int CPP_NAME ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ PRAGMA_OMP_CLAUSE_COPYIN ;
 scalar_t__ PRAGMA_OMP_CLAUSE_COPYPRIVATE ;
 scalar_t__ PRAGMA_OMP_CLAUSE_DEFAULT ;
 scalar_t__ PRAGMA_OMP_CLAUSE_FIRSTPRIVATE ;
 scalar_t__ PRAGMA_OMP_CLAUSE_IF ;
 scalar_t__ PRAGMA_OMP_CLAUSE_LASTPRIVATE ;
 scalar_t__ PRAGMA_OMP_CLAUSE_NONE ;
 scalar_t__ PRAGMA_OMP_CLAUSE_NOWAIT ;
 scalar_t__ PRAGMA_OMP_CLAUSE_NUM_THREADS ;
 scalar_t__ PRAGMA_OMP_CLAUSE_ORDERED ;
 scalar_t__ PRAGMA_OMP_CLAUSE_PRIVATE ;
 scalar_t__ PRAGMA_OMP_CLAUSE_REDUCTION ;
 scalar_t__ PRAGMA_OMP_CLAUSE_SCHEDULE ;
 scalar_t__ PRAGMA_OMP_CLAUSE_SHARED ;
 int RID_DEFAULT ;
 int RID_IF ;
 int RID_PRIVATE ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 TYPE_4__* cp_lexer_peek_token (int ) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static pragma_omp_clause
cp_parser_omp_clause_name (cp_parser *parser)
{
  pragma_omp_clause result = PRAGMA_OMP_CLAUSE_NONE;

  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_IF))
    result = PRAGMA_OMP_CLAUSE_IF;
  else if (cp_lexer_next_token_is_keyword (parser->lexer, RID_DEFAULT))
    result = PRAGMA_OMP_CLAUSE_DEFAULT;
  else if (cp_lexer_next_token_is_keyword (parser->lexer, RID_PRIVATE))
    result = PRAGMA_OMP_CLAUSE_PRIVATE;
  else if (cp_lexer_next_token_is (parser->lexer, CPP_NAME))
    {
      tree id = cp_lexer_peek_token (parser->lexer)->u.value;
      const char *p = IDENTIFIER_POINTER (id);

      switch (p[0])
 {
 case 'c':
   if (!strcmp ("copyin", p))
     result = PRAGMA_OMP_CLAUSE_COPYIN;
   else if (!strcmp ("copyprivate", p))
     result = PRAGMA_OMP_CLAUSE_COPYPRIVATE;
   break;
 case 'f':
   if (!strcmp ("firstprivate", p))
     result = PRAGMA_OMP_CLAUSE_FIRSTPRIVATE;
   break;
 case 'l':
   if (!strcmp ("lastprivate", p))
     result = PRAGMA_OMP_CLAUSE_LASTPRIVATE;
   break;
 case 'n':
   if (!strcmp ("nowait", p))
     result = PRAGMA_OMP_CLAUSE_NOWAIT;
   else if (!strcmp ("num_threads", p))
     result = PRAGMA_OMP_CLAUSE_NUM_THREADS;
   break;
 case 'o':
   if (!strcmp ("ordered", p))
     result = PRAGMA_OMP_CLAUSE_ORDERED;
   break;
 case 'r':
   if (!strcmp ("reduction", p))
     result = PRAGMA_OMP_CLAUSE_REDUCTION;
   break;
 case 's':
   if (!strcmp ("schedule", p))
     result = PRAGMA_OMP_CLAUSE_SCHEDULE;
   else if (!strcmp ("shared", p))
     result = PRAGMA_OMP_CLAUSE_SHARED;
   break;
 }
    }

  if (result != PRAGMA_OMP_CLAUSE_NONE)
    cp_lexer_consume_token (parser->lexer);

  return result;
}
