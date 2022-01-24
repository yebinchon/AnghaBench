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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  block_move_fn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC3 (int for_call)
{
  static bool emitted_extern;

  if (!block_move_fn)
    FUNC1 (NULL);

  if (for_call && !emitted_extern)
    {
      emitted_extern = true;
      FUNC2 (block_move_fn);
      FUNC0 (block_move_fn);
    }

  return block_move_fn;
}