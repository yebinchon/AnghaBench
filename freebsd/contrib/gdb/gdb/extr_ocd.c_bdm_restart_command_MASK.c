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
 int /*<<< orphan*/  OCD_RESET_RUN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int last_run_status ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ocd_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (char *args, int from_tty)
{
  int status, pktlen;

  if (!ocd_desc)
    FUNC1 ("Not connected to OCD device.");

  FUNC3 (OCD_RESET_RUN, &status, &pktlen);
  last_run_status = status;
  FUNC0 ();
  FUNC4 ();
  FUNC2 ();
}