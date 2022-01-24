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
struct inf {int want_exceptions; scalar_t__ task; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();
  int val = FUNC1 (args, "set exceptions");

  if (inf->task && inf->want_exceptions != val)
    /* Make this take effect immediately in a running process.  */
    /* XXX */ ;

  inf->want_exceptions = val;
}