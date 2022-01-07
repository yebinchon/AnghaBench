
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {TYPE_1__** parray; } ;
struct TYPE_3__ {int estimated_nb_iterations; } ;


 scalar_t__ INTEGER_CST ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ chrec_contains_undetermined (int ) ;
 TYPE_2__* current_loops ;
 int number_of_iterations_in_loop (TYPE_1__*) ;

__attribute__((used)) static tree
get_number_of_iters_for_loop (int loopnum)
{
  tree numiter = number_of_iterations_in_loop (current_loops->parray[loopnum]);

  if (TREE_CODE (numiter) != INTEGER_CST)
    numiter = current_loops->parray[loopnum]->estimated_nb_iterations;
  if (chrec_contains_undetermined (numiter))
    return NULL_TREE;
  return numiter;
}
