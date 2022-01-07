
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int cp_token ;
typedef int cp_parser ;
struct TYPE_2__ {int have_tls; } ;


 int cp_parser_omp_var_list (int *,int ,int *) ;
 int cp_parser_require_pragma_eol (int *,int *) ;
 int finish_omp_threadprivate (int ) ;
 int sorry (char*) ;
 TYPE_1__ targetm ;

__attribute__((used)) static void
cp_parser_omp_threadprivate (cp_parser *parser, cp_token *pragma_tok)
{
  tree vars;

  vars = cp_parser_omp_var_list (parser, 0, ((void*)0));
  cp_parser_require_pragma_eol (parser, pragma_tok);

  if (!targetm.have_tls)
    sorry ("threadprivate variables not supported in this target");

  finish_omp_threadprivate (vars);
}
