#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  step; } ;
typedef  TYPE_1__ affine_iv ;
struct TYPE_5__ {struct loop* loop_father; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (tree phi)
{
  struct loop *loop = FUNC1 (phi)->loop_father;
  tree name = FUNC0 (phi);
  affine_iv iv;

  if (!FUNC2 (name))
    return NULL_TREE;

  if (!FUNC3 (loop, phi, name, &iv, true))
    return NULL_TREE;

  return (FUNC4 (iv.step) ? NULL_TREE : iv.step);
}