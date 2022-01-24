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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int NSIG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4 (int pid, sigset_t *pending, sigset_t *flush_mask)
{
  sigset_t blocked, ignored;
  int i;

  FUNC0 (pid, pending, &blocked, &ignored);

  if (!flush_mask)
    return 0;

  for (i = 1; i < NSIG; i++)
    if (FUNC3 (pending, i))
      if (!FUNC3 (flush_mask, i)
	  || FUNC3 (&blocked, i)
	  || FUNC3 (&ignored, i))
	FUNC1 (pending, i);

  if (FUNC2 (pending))
    return 0;

  return 1;
}