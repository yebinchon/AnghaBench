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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void (*) (int)) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ target_activity_fd ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (int signo)
{
  int numfds;
  fd_set readfds;

  FUNC6 (SIGIO, handle_sigio);

  FUNC2 (&readfds);
  FUNC1 (target_activity_fd, &readfds);
  numfds = FUNC5 (target_activity_fd + 1, &readfds, NULL, NULL, NULL);
  if (numfds >= 0 && FUNC0 (target_activity_fd, &readfds))
    {
#ifndef _WIN32
      if (FUNC8) ())
	FUNC4 (FUNC3 (inferior_ptid), SIGINT);
#endif
    }
}