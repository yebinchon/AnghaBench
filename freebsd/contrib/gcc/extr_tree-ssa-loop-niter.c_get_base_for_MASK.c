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
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct loop*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*) ; 

__attribute__((used)) static tree
FUNC6 (struct loop *loop, tree x)
{
  tree phi, init, next;

  if (FUNC3 (x))
    return x;

  phi = FUNC2 (loop, x);
  if (!phi)
    return NULL_TREE;

  init = FUNC0 (phi, FUNC5 (loop));
  next = FUNC0 (phi, FUNC4 (loop));

  if (FUNC1 (next) != SSA_NAME)
    return NULL_TREE;

  if (!FUNC3 (init))
    return NULL_TREE;

  if (FUNC2 (loop, next) != phi)
    return NULL_TREE;

  return phi;
}