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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC3 (rtx *operands)
{
  /* We have to be careful here because the two might overlap.  */
  int dest_start = FUNC0 (operands[0]);
  int src_start = FUNC0 (operands[1]);
  rtx ops[2];
  int i;

  if (dest_start < src_start)
    {
      for (i = 0; i < 3; i++)
	{
	  ops[0] = FUNC1 (SImode, dest_start + i);
	  ops[1] = FUNC1 (SImode, src_start + i);
	  FUNC2 ("mov%?\t%0, %1", ops);
	}
    }
  else
    {
      for (i = 2; i >= 0; i--)
	{
	  ops[0] = FUNC1 (SImode, dest_start + i);
	  ops[1] = FUNC1 (SImode, src_start + i);
	  FUNC2 ("mov%?\t%0, %1", ops);
	}
    }

  return "";
}