
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 int DECL_IS_BUILTIN (int ) ;
 int DECL_RESULT (int ) ;
 int DECL_SOURCE_LOCATION (int ) ;
 int NOTE_INSN_DELETED ;
 int OPT_Waggregate_return ;
 int TREE_TYPE (int ) ;
 int emit_line_note (int ) ;
 int emit_note (int ) ;
 int prepare_function_start (int ) ;
 int warning (int ,char*) ;

void
init_function_start (tree subr)
{
  prepare_function_start (subr);





  if (! DECL_IS_BUILTIN (subr))
    emit_line_note (DECL_SOURCE_LOCATION (subr));




  emit_note (NOTE_INSN_DELETED);



  if (AGGREGATE_TYPE_P (TREE_TYPE (DECL_RESULT (subr))))
    warning (OPT_Waggregate_return, "function returns an aggregate");
}
