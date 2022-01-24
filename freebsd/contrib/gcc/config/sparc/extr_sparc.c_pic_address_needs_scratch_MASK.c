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
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int
FUNC3 (rtx x)
{
  /* An address which is a symbolic plus a non SMALL_INT needs a temp reg.  */
  if (FUNC0 (x) == CONST && FUNC0 (FUNC2 (x, 0)) == PLUS
      && FUNC0 (FUNC2 (FUNC2 (x, 0), 0)) == SYMBOL_REF
      && FUNC0 (FUNC2 (FUNC2 (x, 0), 1)) == CONST_INT
      && ! FUNC1 (FUNC2 (FUNC2 (x, 0), 1)))
    return 1;

  return 0;
}