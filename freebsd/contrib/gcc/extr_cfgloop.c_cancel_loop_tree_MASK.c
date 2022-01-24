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
struct loops {int dummy; } ;
struct loop {struct loop* inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loops*,struct loop*) ; 

void
FUNC1 (struct loops *loops, struct loop *loop)
{
  while (loop->inner)
    FUNC1 (loops, loop->inner);
  FUNC0 (loops, loop);
}