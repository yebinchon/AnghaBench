
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef int * tree ;
typedef int pragma_omp_clause ;
struct TYPE_20__ {int error; } ;
typedef TYPE_1__ c_parser ;


 int CPP_PRAGMA_EOL ;
 int * c_finish_omp_clauses (int *) ;
 int c_parser_error (TYPE_1__*,char*) ;
 scalar_t__ c_parser_next_token_is_not (TYPE_1__*,int ) ;
 int * c_parser_omp_clause_copyin (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_copyprivate (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_default (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_firstprivate (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_if (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_lastprivate (TYPE_1__*,int *) ;
 int c_parser_omp_clause_name (TYPE_1__*) ;
 int * c_parser_omp_clause_nowait (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_num_threads (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_ordered (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_private (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_reduction (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_schedule (TYPE_1__*,int *) ;
 int * c_parser_omp_clause_shared (TYPE_1__*,int *) ;
 int c_parser_skip_to_pragma_eol (TYPE_1__*) ;
 int error (char*,char const*,char const*) ;

__attribute__((used)) static tree
c_parser_omp_all_clauses (c_parser *parser, unsigned int mask,
     const char *where)
{
  tree clauses = ((void*)0);

  while (c_parser_next_token_is_not (parser, CPP_PRAGMA_EOL))
    {
      const pragma_omp_clause c_kind = c_parser_omp_clause_name (parser);
      const char *c_name;
      tree prev = clauses;

      switch (c_kind)
 {
 case 140:
   clauses = c_parser_omp_clause_copyin (parser, clauses);
   c_name = "copyin";
   break;
 case 139:
   clauses = c_parser_omp_clause_copyprivate (parser, clauses);
   c_name = "copyprivate";
   break;
 case 138:
   clauses = c_parser_omp_clause_default (parser, clauses);
   c_name = "default";
   break;
 case 137:
   clauses = c_parser_omp_clause_firstprivate (parser, clauses);
   c_name = "firstprivate";
   break;
 case 136:
   clauses = c_parser_omp_clause_if (parser, clauses);
   c_name = "if";
   break;
 case 135:
   clauses = c_parser_omp_clause_lastprivate (parser, clauses);
   c_name = "lastprivate";
   break;
 case 134:
   clauses = c_parser_omp_clause_nowait (parser, clauses);
   c_name = "nowait";
   break;
 case 133:
   clauses = c_parser_omp_clause_num_threads (parser, clauses);
   c_name = "num_threads";
   break;
 case 132:
   clauses = c_parser_omp_clause_ordered (parser, clauses);
   c_name = "ordered";
   break;
 case 131:
   clauses = c_parser_omp_clause_private (parser, clauses);
   c_name = "private";
   break;
 case 130:
   clauses = c_parser_omp_clause_reduction (parser, clauses);
   c_name = "reduction";
   break;
 case 129:
   clauses = c_parser_omp_clause_schedule (parser, clauses);
   c_name = "schedule";
   break;
 case 128:
   clauses = c_parser_omp_clause_shared (parser, clauses);
   c_name = "shared";
   break;
 default:
   c_parser_error (parser, "expected %<#pragma omp%> clause");
   goto saw_error;
 }

      if (((mask >> c_kind) & 1) == 0 && !parser->error)
 {


   clauses = prev;
   error ("%qs is not valid for %qs", c_name, where);
 }
    }

 saw_error:
  c_parser_skip_to_pragma_eol (parser);

  return c_finish_omp_clauses (clauses);
}
