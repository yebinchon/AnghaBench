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
struct environ {int allocated; char** vector; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

struct environ *
FUNC1 (void)
{
  struct environ *e;

  e = (struct environ *) FUNC0 (sizeof (struct environ));

  e->allocated = 10;
  e->vector = (char **) FUNC0 ((e->allocated + 1) * sizeof (char *));
  e->vector[0] = 0;
  return e;
}