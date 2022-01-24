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
struct loop {scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC5 (int /*<<< orphan*/ ) ; 
 struct loop* FUNC6 (struct loop*,scalar_t__) ; 

__attribute__((used)) static tree 
FUNC7 (struct loop *loop, tree loop_phi_node)
{
  tree res;
  struct loop *phi_loop = FUNC5 (loop_phi_node);
  tree init_cond;
  
  if (phi_loop != loop)
    {
      struct loop *subloop;
      tree evolution_fn = FUNC3
	(phi_loop, FUNC0 (loop_phi_node));

      /* Dive one level deeper.  */
      subloop = FUNC6 (phi_loop, loop->depth + 1);

      /* Interpret the subloop.  */
      res = FUNC4 (subloop, evolution_fn);
      return res;
    }

  /* Otherwise really interpret the loop phi.  */
  init_cond = FUNC2 (loop_phi_node);
  res = FUNC1 (loop_phi_node, init_cond);

  return res;
}