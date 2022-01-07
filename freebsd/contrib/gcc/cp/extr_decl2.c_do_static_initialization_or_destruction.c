
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* priority_info ;
struct TYPE_3__ {int initializations_p; int destructions_p; } ;


 int DECL_EFFECTIVE_INIT_PRIORITY (scalar_t__) ;
 int EQ_EXPR ;
 int NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_HAS_TRIVIAL_DESTRUCTOR (int ) ;
 scalar_t__ begin_if_stmt () ;
 scalar_t__ build_int_cst (int ,int) ;
 scalar_t__ cp_build_binary_op (int ,int ,scalar_t__) ;
 int finish_if_stmt (scalar_t__) ;
 int finish_if_stmt_cond (scalar_t__,scalar_t__) ;
 int finish_then_clause (scalar_t__) ;
 TYPE_1__* get_priority_info (int) ;
 int initialize_p_decl ;
 scalar_t__ integer_one_node ;
 scalar_t__ integer_zero_node ;
 int one_static_initialization_or_destruction (scalar_t__,int ,int) ;
 int priority_decl ;

__attribute__((used)) static void
do_static_initialization_or_destruction (tree vars, bool initp)
{
  tree node, init_if_stmt, cond;


  init_if_stmt = begin_if_stmt ();
  cond = initp ? integer_one_node : integer_zero_node;
  cond = cp_build_binary_op (EQ_EXPR,
      initialize_p_decl,
      cond);
  finish_if_stmt_cond (cond, init_if_stmt);

  node = vars;
  do {
    tree decl = TREE_VALUE (node);
    tree priority_if_stmt;
    int priority;
    priority_info pi;



    if (!initp && TYPE_HAS_TRIVIAL_DESTRUCTOR (TREE_TYPE (decl)))
      {
 node = TREE_CHAIN (node);
 continue;
      }



    priority = DECL_EFFECTIVE_INIT_PRIORITY (decl);
    pi = get_priority_info (priority);
    if (initp)
      pi->initializations_p = 1;
    else
      pi->destructions_p = 1;



    priority_if_stmt = begin_if_stmt ();
    cond = cp_build_binary_op (EQ_EXPR,
          priority_decl,
          build_int_cst (NULL_TREE, priority));
    finish_if_stmt_cond (cond, priority_if_stmt);


    for (; node
    && DECL_EFFECTIVE_INIT_PRIORITY (TREE_VALUE (node)) == priority;
  node = TREE_CHAIN (node))

      one_static_initialization_or_destruction (TREE_VALUE (node),
      TREE_PURPOSE (node), initp);


    finish_then_clause (priority_if_stmt);
    finish_if_stmt (priority_if_stmt);

  } while (node);


  finish_then_clause (init_if_stmt);
  finish_if_stmt (init_if_stmt);
}
