
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct named_label_use_entry {int o_goto_locus; int in_omp_scope; int names_in_scope; int binding_level; } ;


 int check_previous_goto_1 (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
check_previous_goto (tree decl, struct named_label_use_entry *use)
{
  check_previous_goto_1 (decl, use->binding_level,
    use->names_in_scope, use->in_omp_scope,
    &use->o_goto_locus);
}
