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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  /* FIXME, if we lose on reading the symbol file, we should revert
     the exec file, but that's rough.  */
  FUNC0 (arg, from_tty);
  FUNC2 (arg, from_tty);
  if (&file_changed_hook)
    FUNC1 (arg);
}