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
struct sra_walk_fns {int dummy; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct sra_walk_fns const*) ; 

__attribute__((used)) static void
FUNC3 (tree expr, block_stmt_iterator *bsi,
		   const struct sra_walk_fns *fns)
{
  FUNC2 (FUNC0 (expr), bsi, false, fns);
  FUNC2 (FUNC1 (expr), bsi, true, fns);
}