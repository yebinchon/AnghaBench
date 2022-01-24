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
struct inf {scalar_t__ want_signals; scalar_t__ traced; scalar_t__ task; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct inf*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();

  inf->want_signals = FUNC2 (args, "set signals");

  if (inf->task && inf->want_signals != inf->traced)
    /* Make this take effect immediately in a running process.  */
    FUNC1 (inf, inf->want_signals);
}