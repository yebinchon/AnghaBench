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
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 scalar_t__ ENTRY_BLOCK_PTR ; 
 scalar_t__ EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline basic_block
FUNC2 (basic_block block)
{
  FUNC0 (block != ENTRY_BLOCK_PTR);

  if (block == EXIT_BLOCK_PTR)
    return EXIT_BLOCK_PTR;
  else
    {
      basic_block bb = FUNC1 (CDI_POST_DOMINATORS, block);
      if (! bb)
	return EXIT_BLOCK_PTR;
      return bb;
    }
}