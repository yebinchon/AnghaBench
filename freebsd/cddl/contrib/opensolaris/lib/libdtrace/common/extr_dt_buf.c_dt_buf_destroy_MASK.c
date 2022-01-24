#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_3__ {int /*<<< orphan*/  dbu_buf; int /*<<< orphan*/  dbu_resizes; scalar_t__ dbu_len; int /*<<< orphan*/  dbu_name; } ;
typedef  TYPE_1__ dt_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(dtrace_hdl_t *dtp, dt_buf_t *bp)
{
	FUNC0("dt_buf_destroy(%s): size=%lu resizes=%u\n",
	    bp->dbu_name, (ulong_t)bp->dbu_len, bp->dbu_resizes);

	FUNC1(dtp, bp->dbu_buf);
}