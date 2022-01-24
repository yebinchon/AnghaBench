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
struct inf {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();
  if (!args)
    FUNC1 ("No argument to \"set task exception-port\" command.");
  FUNC3 (inf->task, FUNC2 (args));
}