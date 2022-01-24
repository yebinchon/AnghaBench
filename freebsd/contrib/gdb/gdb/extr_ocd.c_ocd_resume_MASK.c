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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int /*<<< orphan*/  OCD_RUN ; 
 int /*<<< orphan*/  OCD_STEP ; 
 int /*<<< orphan*/  last_run_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

void
FUNC1 (ptid_t ptid, int step, enum target_signal siggnal)
{
  int pktlen;

  if (step)
    FUNC0 (OCD_STEP, &last_run_status, &pktlen);
  else
    FUNC0 (OCD_RUN, &last_run_status, &pktlen);
}