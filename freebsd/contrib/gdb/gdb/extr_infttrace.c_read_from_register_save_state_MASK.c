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
typedef  int /*<<< orphan*/  register_value_t ;
typedef  int /*<<< orphan*/  TTRACE_ARG_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  TT_LWP_RUREGS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1 (int tid, TTRACE_ARG_TYPE ss_offset, char *buf,
			       int sizeof_buf)
{
  int tt_status;
  register_value_t register_value = 0;

  tt_status = FUNC0 (TT_LWP_RUREGS,
			   tid,
			   ss_offset,
			   (TTRACE_ARG_TYPE) sizeof_buf,
			   (TTRACE_ARG_TYPE) buf);

  if (tt_status == 1)
    /* Map ttrace's version of success to our version.
     * Sometime ttrace returns 0, but that's ok here.
     */
    return 0;

  return tt_status;
}