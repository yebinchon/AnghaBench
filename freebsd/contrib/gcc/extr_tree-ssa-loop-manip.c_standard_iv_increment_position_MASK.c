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
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ LABEL_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (struct loop *loop, block_stmt_iterator *bsi,
				bool *insert_after)
{
  basic_block bb = FUNC3 (loop), latch = FUNC2 (loop);
  tree last = FUNC4 (latch);

  if (!bb
      || (last && FUNC0 (last) != LABEL_EXPR))
    {
      *bsi = FUNC1 (latch);
      *insert_after = true;
    }
  else
    {
      *bsi = FUNC1 (bb);
      *insert_after = false;
    }
}