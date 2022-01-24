#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct tree_omp_clause {int dummy; } ;
typedef  enum omp_clause_code { ____Placeholder_omp_clause_code } omp_clause_code ;

/* Variables and functions */
 int /*<<< orphan*/  OMP_CLAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ omp_clause_kind ; 
 int* omp_clause_num_ops ; 
 int /*<<< orphan*/ * tree_node_counts ; 
 int* tree_node_sizes ; 

tree
FUNC4 (enum omp_clause_code code)
{
  tree t;
  int size, length;

  length = omp_clause_num_ops[code];
  size = (sizeof (struct tree_omp_clause) + (length - 1) * sizeof (tree));

  t = FUNC2 (size);
  FUNC3 (t, 0, size);
  FUNC1 (t, OMP_CLAUSE);
  FUNC0 (t, code);

#ifdef GATHER_STATISTICS
  tree_node_counts[(int) omp_clause_kind]++;
  tree_node_sizes[(int) omp_clause_kind] += size;
#endif
  
  return t;
}