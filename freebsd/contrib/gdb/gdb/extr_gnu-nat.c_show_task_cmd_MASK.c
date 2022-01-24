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
struct inf {scalar_t__ pause_sc; scalar_t__ detach_sc; scalar_t__ default_thread_detach_sc; scalar_t__ task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct inf* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11 (char *args, int from_tty)
{
  struct inf *inf = FUNC1 ();

  FUNC0 (args, "show task");

  FUNC4 (0, from_tty);
  FUNC2 (0, from_tty);
  FUNC7 (0, from_tty);

  if (inf->pause_sc == 0)
    FUNC9 (0, from_tty);
  FUNC10 (0, from_tty);

  if (inf->task)
    {
      FUNC5 (0, from_tty);
      FUNC3 (0, from_tty);
    }

  if (inf->detach_sc != 0)
    FUNC6 (0, from_tty);
  if (inf->default_thread_detach_sc != 0)
    FUNC8 (0, from_tty);
}