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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ TARGET_64BIT ; 
 int TRAMPOLINE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

void
FUNC3 (FILE *file)
{
  rtx op[2];
  op[0] = FUNC1 (Pmode, 0);
  op[1] = FUNC1 (Pmode, 1);

  if (TARGET_64BIT)
    {
      FUNC2 ("basr\t%1,0", op);
      FUNC2 ("lmg\t%0,%1,14(%1)", op);
      FUNC2 ("br\t%1", op);
      FUNC0 (file, (HOST_WIDE_INT)(TRAMPOLINE_SIZE - 10));
    }
  else
    {
      FUNC2 ("basr\t%1,0", op);
      FUNC2 ("lm\t%0,%1,6(%1)", op);
      FUNC2 ("br\t%1", op);
      FUNC0 (file, (HOST_WIDE_INT)(TRAMPOLINE_SIZE - 8));
    }
}