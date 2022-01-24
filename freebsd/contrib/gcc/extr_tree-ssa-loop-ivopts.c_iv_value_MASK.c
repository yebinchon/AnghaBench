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
struct iv {int /*<<< orphan*/  base; int /*<<< orphan*/  step; } ;

/* Variables and functions */
 int /*<<< orphan*/  MULT_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC3 (struct iv *iv, tree niter)
{
  tree val;
  tree type = FUNC0 (iv->base);

  niter = FUNC2 (type, niter);
  val = FUNC1 (MULT_EXPR, type, iv->step, niter);

  return FUNC1 (PLUS_EXPR, type, iv->base, val);
}