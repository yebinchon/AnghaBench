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
typedef  int /*<<< orphan*/  LABEL_NUSES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

rtx
FUNC5 (rtx insn)
{
  rtx label;

  /* Find an existing label at this point
     or make a new one if there is none.  */
  label = FUNC4 (insn);

  if (label == 0 || !FUNC0 (label))
    {
      rtx prev = FUNC1 (insn);

      label = FUNC3 ();
      FUNC2 (label, prev);
      LABEL_NUSES (label) = 0;
    }
  return label;
}