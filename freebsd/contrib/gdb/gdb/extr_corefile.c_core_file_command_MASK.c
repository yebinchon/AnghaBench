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
struct target_ops {int /*<<< orphan*/  (* to_open ) (char*,int) ;int /*<<< orphan*/  (* to_detach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct target_ops* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5 (char *filename, int from_tty)
{
  struct target_ops *t;

  FUNC0 ();		/* Either way, seems bogus. */

  t = FUNC2 ();
  if (t == NULL)
    FUNC1 ("GDB can't read core files on this machine.");

  if (!filename)
    (t->to_detach) (filename, from_tty);
  else
    (t->to_open) (filename, from_tty);
}