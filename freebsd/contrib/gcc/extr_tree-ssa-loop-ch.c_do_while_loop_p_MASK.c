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
struct loop {int /*<<< orphan*/  header; int /*<<< orphan*/  latch; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ LABEL_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (struct loop *loop)
{
  tree stmt = FUNC2 (loop->latch);

  /* If the latch of the loop is not empty, it is not a do-while loop.  */
  if (stmt
      && FUNC0 (stmt) != LABEL_EXPR)
    return false;

  /* If the header contains just a condition, it is not a do-while loop.  */
  stmt = FUNC1 (loop->header);
  if (stmt
      && FUNC0 (stmt) == COND_EXPR)
    return false;

  return true;
}