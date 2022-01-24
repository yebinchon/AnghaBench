#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sigusr1_report; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__ __mf_opts ; 
 scalar_t__ __mf_sigusr1_handled ; 
 int /*<<< orphan*/  __mf_sigusr1_handler ; 
 scalar_t__ __mf_sigusr1_received ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ reentrant ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4 ()
{
  static int handler_installed;

#ifdef SIGUSR1
  /* Manage handler */
  if (__mf_opts.sigusr1_report && ! handler_installed)
    {
      signal (SIGUSR1, __mf_sigusr1_handler);
      handler_installed = 1;
    }
  else if(! __mf_opts.sigusr1_report && handler_installed)
    {
      signal (SIGUSR1, SIG_DFL);
      handler_installed = 0;
    }
#endif

  /* Manage enqueued signals */
  if (__mf_sigusr1_received > __mf_sigusr1_handled)
    {
      __mf_sigusr1_handled ++;
      FUNC2 (FUNC0 () == reentrant);
      FUNC1 ();
      handler_installed = 0; /* We may need to re-enable signal; this might be a SysV library. */
    }
}