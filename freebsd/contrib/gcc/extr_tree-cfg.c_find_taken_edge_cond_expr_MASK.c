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
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static edge
FUNC4 (basic_block bb, tree val)
{
  edge true_edge, false_edge;

  FUNC1 (bb, &true_edge, &false_edge);

  FUNC2 (FUNC0 (val) == INTEGER_CST);
  return (FUNC3 (val) ? false_edge : true_edge);
}