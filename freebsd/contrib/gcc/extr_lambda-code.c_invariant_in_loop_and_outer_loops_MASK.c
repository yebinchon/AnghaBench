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
struct loop {scalar_t__ depth; struct loop* outer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (struct loop *loop, tree op)
{
  if (FUNC1 (op))
    return true;
  if (loop->depth == 0)
    return true;
  if (!FUNC0 (loop, op))
    return false;
  if (loop->outer 
      && !FUNC2 (loop->outer, op))
    return false;
  return true;
}