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

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ inferior_argc ; 
 char* inferior_args ; 
 int /*<<< orphan*/  inferior_argv ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4 (void)
{
  if (inferior_argc != 0)
    {
      char *n, *old;

      n = FUNC0 (current_gdbarch,
						inferior_argc, inferior_argv);
      old = FUNC1 (n);
      FUNC2 (old);
    }

  if (inferior_args == NULL)
    inferior_args = FUNC3 ("");

  return inferior_args;
}