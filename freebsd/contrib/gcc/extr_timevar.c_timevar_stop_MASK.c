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
typedef  size_t timevar_id_t ;
struct timevar_time_def {int dummy; } ;
struct timevar_def {int /*<<< orphan*/  start_time; int /*<<< orphan*/  elapsed; int /*<<< orphan*/  standalone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timevar_time_def*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timevar_time_def*) ; 
 int /*<<< orphan*/  timevar_enable ; 
 struct timevar_def* timevars ; 

void
FUNC3 (timevar_id_t timevar)
{
  struct timevar_def *tv = &timevars[timevar];
  struct timevar_time_def now;

  if (!timevar_enable)
    return;

  /* TIMEVAR must have been started via timevar_start.  */
  FUNC0 (tv->standalone);

  FUNC1 (&now);
  FUNC2 (&tv->elapsed, &tv->start_time, &now);
}