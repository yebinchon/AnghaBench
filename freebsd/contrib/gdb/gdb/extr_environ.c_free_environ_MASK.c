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
struct environ {char** vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct environ*) ; 

void
FUNC1 (struct environ *e)
{
  char **vector = e->vector;

  while (*vector)
    FUNC0 (*vector++);

  FUNC0 (e);
}