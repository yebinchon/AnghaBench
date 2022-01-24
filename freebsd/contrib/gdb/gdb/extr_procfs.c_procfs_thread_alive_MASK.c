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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  procinfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5 (ptid_t ptid)
{
  int proc, thread;
  procinfo *pi;

  proc    = FUNC0 (ptid);
  thread  = FUNC1 (ptid);
  /* If I don't know it, it ain't alive! */
  if ((pi = FUNC3 (proc, thread)) == NULL)
    return 0;

  /* If I can't get its status, it ain't alive!
     What's more, I need to forget about it!  */
  if (!FUNC4 (pi))
    {
      FUNC2 (pi);
      return 0;
    }
  /* I couldn't have got its status if it weren't alive, so it's alive.  */
  return 1;
}