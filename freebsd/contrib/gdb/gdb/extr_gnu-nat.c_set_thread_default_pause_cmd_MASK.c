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
struct inf {int default_thread_pause_sc; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();
  inf->default_thread_pause_sc =
    FUNC1 (args, "set thread default pause") ? 0 : 1;
}