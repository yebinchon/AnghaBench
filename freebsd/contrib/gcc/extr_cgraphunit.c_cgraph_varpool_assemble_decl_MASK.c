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
struct cgraph_varpool_node {int /*<<< orphan*/  alias; int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (struct cgraph_varpool_node *node)
{
  tree decl = node->decl;

  if (!FUNC2 (decl)
      && !node->alias
      && !FUNC0 (decl)
      && (FUNC3 (decl) != VAR_DECL || !FUNC1 (decl)))
    {
      FUNC4 (decl, 0, 1, 0);
      return FUNC2 (decl);
    }

  return false;
}