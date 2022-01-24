#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {TYPE_1__* header; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_1__* basic_block ;
struct TYPE_10__ {int /*<<< orphan*/  dest; } ;
struct TYPE_9__ {int /*<<< orphan*/  succs; scalar_t__ aux; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ LABEL_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC14 (basic_block header, struct loop *loop,
				int *limit)
{
  block_stmt_iterator bsi;
  tree last;

  /* Do not copy one block more than once (we do not really want to do
     loop peeling here).  */
  if (header->aux)
    return false;

  FUNC9 (FUNC0 (header->succs) > 0);
  if (FUNC13 (header))
    return false;
  if (FUNC8 (loop, FUNC1 (header, 0)->dest)
      && FUNC8 (loop, FUNC1 (header, 1)->dest))
    return false;

  /* If this is not the original loop header, we want it to have just
     one predecessor in order to match the && pattern.  */
  if (header != loop->header && !FUNC12 (header))
    return false;

  last = FUNC11 (header);
  if (FUNC2 (last) != COND_EXPR)
    return false;

  /* Approximately copy the conditions that used to be used in jump.c --
     at most 20 insns and no calls.  */
  for (bsi = FUNC5 (header); !FUNC3 (bsi); FUNC4 (&bsi))
    {
      last = FUNC6 (bsi);

      if (FUNC2 (last) == LABEL_EXPR)
	continue;

      if (FUNC10 (last))
	return false;

      *limit -= FUNC7 (last);
      if (*limit < 0)
	return false;
    }

  return true;
}