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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_3__ {int dtada_minbin; int dtada_maxbin; } ;
typedef  TYPE_1__ dtrace_aggdata_t ;
typedef  scalar_t__ dtrace_actkind_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ DTRACEAGG_LQUANTIZE ; 
 scalar_t__ DTRACEAGG_QUANTIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DTRACE_QUANTIZE_NBUCKETS ; 
 int DTRACE_QUANTIZE_ZEROBUCKET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, FILE *fp, int width,
    const dtrace_aggdata_t *aggdata, dtrace_actkind_t action)
{
	int min = aggdata->dtada_minbin, max = aggdata->dtada_maxbin;
	int minwidth, maxwidth, i;

	FUNC1(action == DTRACEAGG_QUANTIZE || action == DTRACEAGG_LQUANTIZE);

	if (action == DTRACEAGG_QUANTIZE) {
		if (min != 0 && min != DTRACE_QUANTIZE_ZEROBUCKET)
			min--;

		if (max < DTRACE_QUANTIZE_NBUCKETS - 1)
			max++;

		minwidth = FUNC2(FUNC0(min));
		maxwidth = FUNC2(FUNC0(max));
	} else {
		maxwidth = 8;
		minwidth = maxwidth - 1;
		max++;
	}

	if (FUNC3(dtp, fp, "\n%*s %*s .",
	    width, width > 0 ? "key" : "", minwidth, "min") < 0)
		return (-1);

	for (i = min; i <= max; i++) {
		if (FUNC3(dtp, fp, "-") < 0)
			return (-1);
	}

	return (FUNC3(dtp, fp, ". %*s | count\n", -maxwidth, "max"));
}