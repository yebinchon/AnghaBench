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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

int
FUNC7 (rtx jump, rtx nlabel)
{
  rtx x = FUNC5 (jump);
  int ochanges;
  int ok;

  ochanges = FUNC4 ();
  FUNC2 (x);
  ok = FUNC3 (FUNC1 (x), jump);
  FUNC2 (ok);
  
  if (FUNC4 () == ochanges)
    return 0;

  /* redirect_jump_1 will fail of nlabel == olabel, and the current use is
     in Pmode, so checking this is not merely an optimization.  */
  return nlabel == FUNC0 (jump) || FUNC6 (jump, nlabel);
}