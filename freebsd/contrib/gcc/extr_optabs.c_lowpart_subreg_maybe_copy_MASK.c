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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static rtx
FUNC3 (enum machine_mode omode, rtx val,
			   enum machine_mode imode)
{
  rtx ret;
  ret = FUNC2 (omode, val, imode);
  if (ret == NULL)
    {
      val = FUNC0 (imode, val);
      ret = FUNC2 (omode, val, imode);
      FUNC1 (ret != NULL);
    }
  return ret;
}