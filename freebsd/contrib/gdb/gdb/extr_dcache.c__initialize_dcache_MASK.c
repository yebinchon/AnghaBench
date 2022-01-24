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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  dcache_enabled_p ; 
 int /*<<< orphan*/  dcache_info ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_boolean ; 

void
FUNC3 (void)
{
  FUNC2
    (FUNC1 ("remotecache", class_support, var_boolean,
		  (char *) &dcache_enabled_p,
		  "\
Set cache use for remote targets.\n\
When on, use data caching for remote targets.  For many remote targets\n\
this option can offer better throughput for reading target memory.\n\
Unfortunately, gdb does not currently know anything about volatile\n\
registers and thus data caching will produce incorrect results with\n\
volatile registers are in use.  By default, this option is off.",
		  &setlist),
     &showlist);

  FUNC0 ("dcache", dcache_info,
	    "Print information on the dcache performance.");

}