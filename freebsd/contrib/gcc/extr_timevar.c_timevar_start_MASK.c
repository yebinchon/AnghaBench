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
struct timevar_def {int used; int standalone; int /*<<< orphan*/  start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timevar_enable ; 
 struct timevar_def* timevars ; 

void
FUNC2 (timevar_id_t timevar)
{
  struct timevar_def *tv = &timevars[timevar];

  if (!timevar_enable)
    return;

  /* Mark this timing variable as used.  */
  tv->used = 1;

  /* Don't allow the same timing variable to be started more than
     once.  */
  FUNC0 (!tv->standalone);
  tv->standalone = 1;

  FUNC1 (&tv->start_time);
}