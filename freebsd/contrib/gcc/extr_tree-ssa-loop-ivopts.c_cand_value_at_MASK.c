#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int dummy; } ;
struct iv_cand {TYPE_1__* iv; } ;
struct TYPE_2__ {int /*<<< orphan*/  step; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct loop*,struct iv_cand*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC4 (struct loop *loop, struct iv_cand *cand, tree at, tree niter)
{
  tree val = FUNC2 (cand->iv, niter);
  tree type = FUNC0 (cand->iv->base);

  if (FUNC3 (loop, cand, at))
    val = FUNC1 (PLUS_EXPR, type, val, cand->iv->step);

  return val;
}