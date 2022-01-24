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

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ GOTO_EXPR ; 
 scalar_t__ LABEL_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1 (tree stmt)
{
  /* Note that COND_EXPR's aren't interesting because if they were exiting the
     loop, we would have already failed the number of exits tests.  */
  if (FUNC0 (stmt) == LABEL_EXPR
      || FUNC0 (stmt) == GOTO_EXPR
      || FUNC0 (stmt) == COND_EXPR)
    return true;
  return false;
}