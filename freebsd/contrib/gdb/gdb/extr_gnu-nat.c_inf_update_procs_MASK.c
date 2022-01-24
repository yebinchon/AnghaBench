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
struct inf {int /*<<< orphan*/  task; int /*<<< orphan*/  threads_up_to_date; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inf*) ; 

int
FUNC1 (struct inf *inf)
{
  if (!inf->task)
    return 0;
  if (!inf->threads_up_to_date)
    FUNC0 (inf);
  return !!inf->task;
}