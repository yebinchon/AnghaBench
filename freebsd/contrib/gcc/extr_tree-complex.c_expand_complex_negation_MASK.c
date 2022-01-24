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
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (block_stmt_iterator *bsi, tree inner_type,
			 tree ar, tree ai)
{
  tree rr, ri;

  rr = FUNC0 (bsi, NEGATE_EXPR, inner_type, ar);
  ri = FUNC0 (bsi, NEGATE_EXPR, inner_type, ai);

  FUNC1 (bsi, rr, ri);
}