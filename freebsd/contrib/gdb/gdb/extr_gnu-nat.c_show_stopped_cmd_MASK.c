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
struct inf {scalar_t__ stopped; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();
  FUNC1 (args, "show stopped");
  FUNC2 ("The inferior process %s stopped.\n",
		     inf->stopped ? "is" : "isn't");
}