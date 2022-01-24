#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long longint; } ;
struct continuation_arg {TYPE_3__* next; TYPE_1__ data; } ;
struct TYPE_5__ {long longint; } ;
struct TYPE_6__ {TYPE_2__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 () ; 
 char* lim_at_start ; 
 int /*<<< orphan*/  FUNC2 (char*,long,char,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_bpstat ; 

void
FUNC4 (struct continuation_arg *arg)
{
  extern int display_time;
  extern int display_space;

  long time_at_cmd_start  = arg->data.longint;
  long space_at_cmd_start = arg->next->data.longint;

  FUNC0 (&stop_bpstat);
  /*do_cleanups (old_chain); *//*?????FIXME????? */

  if (display_time)
    {
      long cmd_time = FUNC1 () - time_at_cmd_start;

      FUNC2 ("Command execution time: %ld.%06ld\n",
			 cmd_time / 1000000, cmd_time % 1000000);
    }
  if (display_space)
    {
#ifdef HAVE_SBRK
      char *lim = (char *) sbrk (0);
      long space_now = lim - lim_at_start;
      long space_diff = space_now - space_at_cmd_start;

      printf_unfiltered ("Space used: %ld (%c%ld for this command)\n",
			 space_now,
			 (space_diff >= 0 ? '+' : '-'),
			 space_diff);
#endif
    }
}