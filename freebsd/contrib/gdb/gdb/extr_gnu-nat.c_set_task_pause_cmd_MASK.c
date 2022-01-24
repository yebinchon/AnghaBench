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
struct inf {int pause_sc; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct inf*) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();
  int old_sc = inf->pause_sc;

  inf->pause_sc = FUNC2 (args, "set task pause");

  if (old_sc == 0 && inf->pause_sc != 0)
    /* If the task is currently unsuspended, immediately suspend it,
       otherwise wait until the next time it gets control.  */
    FUNC1 (inf);
}