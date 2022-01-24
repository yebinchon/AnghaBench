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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 

rtx
FUNC4 (basic_block bb)
{
  rtx tmp;
  rtx end = FUNC1 (bb);

  /* Include any jump table following the basic block.  */
  if (FUNC3 (end, NULL, &tmp))
    end = tmp;

  /* Include any barriers that may follow the basic block.  */
  tmp = FUNC2 (end);
  while (tmp && FUNC0 (tmp))
    {
      end = tmp;
      tmp = FUNC2 (end);
    }

  return end;
}