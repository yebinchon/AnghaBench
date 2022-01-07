
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {TYPE_1__* single_exit; } ;
typedef TYPE_1__* edge ;
struct TYPE_3__ {int dest; } ;


 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 struct loop* loop_containing_stmt (int ) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static tree
loop_closed_phi_def (tree var)
{
  struct loop *loop;
  edge exit;
  tree phi;

  if (var == NULL_TREE
      || TREE_CODE (var) != SSA_NAME)
    return NULL_TREE;

  loop = loop_containing_stmt (SSA_NAME_DEF_STMT (var));
  exit = loop->single_exit;
  if (!exit)
    return NULL_TREE;

  for (phi = phi_nodes (exit->dest); phi; phi = PHI_CHAIN (phi))
    if (PHI_ARG_DEF_FROM_EDGE (phi, exit) == var)
      return PHI_RESULT (phi);

  return NULL_TREE;
}
