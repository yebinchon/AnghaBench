
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int * tree ;
typedef int pragma_omp_clause ;
typedef int cp_token ;
struct TYPE_14__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_PRAGMA_EOL ;
 int OMP_CLAUSE_COPYIN ;
 int OMP_CLAUSE_COPYPRIVATE ;
 int OMP_CLAUSE_FIRSTPRIVATE ;
 int OMP_CLAUSE_LASTPRIVATE ;
 int OMP_CLAUSE_PRIVATE ;
 int OMP_CLAUSE_SHARED ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int * cp_parser_omp_clause_default (TYPE_1__*,int *) ;
 int * cp_parser_omp_clause_if (TYPE_1__*,int *) ;
 int cp_parser_omp_clause_name (TYPE_1__*) ;
 int * cp_parser_omp_clause_nowait (TYPE_1__*,int *) ;
 int * cp_parser_omp_clause_num_threads (TYPE_1__*,int *) ;
 int * cp_parser_omp_clause_ordered (TYPE_1__*,int *) ;
 int * cp_parser_omp_clause_reduction (TYPE_1__*,int *) ;
 int * cp_parser_omp_clause_schedule (TYPE_1__*,int *) ;
 int * cp_parser_omp_var_list (TYPE_1__*,int ,int *) ;
 int cp_parser_skip_to_pragma_eol (TYPE_1__*,int *) ;
 int error (char*,char const*,char const*) ;
 int * finish_omp_clauses (int *) ;

__attribute__((used)) static tree
cp_parser_omp_all_clauses (cp_parser *parser, unsigned int mask,
      const char *where, cp_token *pragma_tok)
{
  tree clauses = ((void*)0);

  while (cp_lexer_next_token_is_not (parser->lexer, CPP_PRAGMA_EOL))
    {
      pragma_omp_clause c_kind = cp_parser_omp_clause_name (parser);
      const char *c_name;
      tree prev = clauses;

      switch (c_kind)
 {
 case 140:
   clauses = cp_parser_omp_var_list (parser, OMP_CLAUSE_COPYIN, clauses);
   c_name = "copyin";
   break;
 case 139:
   clauses = cp_parser_omp_var_list (parser, OMP_CLAUSE_COPYPRIVATE,
         clauses);
   c_name = "copyprivate";
   break;
 case 138:
   clauses = cp_parser_omp_clause_default (parser, clauses);
   c_name = "default";
   break;
 case 137:
   clauses = cp_parser_omp_var_list (parser, OMP_CLAUSE_FIRSTPRIVATE,
         clauses);
   c_name = "firstprivate";
   break;
 case 136:
   clauses = cp_parser_omp_clause_if (parser, clauses);
   c_name = "if";
   break;
 case 135:
   clauses = cp_parser_omp_var_list (parser, OMP_CLAUSE_LASTPRIVATE,
         clauses);
   c_name = "lastprivate";
   break;
 case 134:
   clauses = cp_parser_omp_clause_nowait (parser, clauses);
   c_name = "nowait";
   break;
 case 133:
   clauses = cp_parser_omp_clause_num_threads (parser, clauses);
   c_name = "num_threads";
   break;
 case 132:
   clauses = cp_parser_omp_clause_ordered (parser, clauses);
   c_name = "ordered";
   break;
 case 131:
   clauses = cp_parser_omp_var_list (parser, OMP_CLAUSE_PRIVATE,
         clauses);
   c_name = "private";
   break;
 case 130:
   clauses = cp_parser_omp_clause_reduction (parser, clauses);
   c_name = "reduction";
   break;
 case 129:
   clauses = cp_parser_omp_clause_schedule (parser, clauses);
   c_name = "schedule";
   break;
 case 128:
   clauses = cp_parser_omp_var_list (parser, OMP_CLAUSE_SHARED,
         clauses);
   c_name = "shared";
   break;
 default:
   cp_parser_error (parser, "expected %<#pragma omp%> clause");
   goto saw_error;
 }

      if (((mask >> c_kind) & 1) == 0)
 {


   clauses = prev;
   error ("%qs is not valid for %qs", c_name, where);
 }
    }
 saw_error:
  cp_parser_skip_to_pragma_eol (parser, pragma_tok);
  return finish_omp_clauses (clauses);
}
