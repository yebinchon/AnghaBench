#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct omp_for_data {scalar_t__ n1; scalar_t__ n2; scalar_t__ step; scalar_t__ chunk_size; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_3__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ OMP_FOR ; 
 scalar_t__ OMP_SECTIONS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct omp_for_data*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  long_integer_type_node ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unsigned_type_node ; 

__attribute__((used)) static tree
FUNC8 (tree ws_stmt)
{
  tree t;

  if (FUNC1 (ws_stmt) == OMP_FOR)
    {
      struct omp_for_data fd;
      tree ws_args;

      FUNC4 (ws_stmt, &fd);

      ws_args = NULL_TREE;
      if (fd.chunk_size)
	{
	  t = FUNC5 (long_integer_type_node, fd.chunk_size);
	  ws_args = FUNC7 (NULL, t, ws_args);
	}

      t = FUNC5 (long_integer_type_node, fd.step);
      ws_args = FUNC7 (NULL, t, ws_args);

      t = FUNC5 (long_integer_type_node, fd.n2);
      ws_args = FUNC7 (NULL, t, ws_args);

      t = FUNC5 (long_integer_type_node, fd.n1);
      ws_args = FUNC7 (NULL, t, ws_args);

      return ws_args;
    }
  else if (FUNC1 (ws_stmt) == OMP_SECTIONS)
    {
      basic_block bb = FUNC2 (ws_stmt);
      t = FUNC3 (unsigned_type_node, FUNC0 (bb->succs));
      t = FUNC7 (NULL, t, NULL);
      return t;
    }

  FUNC6 ();
}