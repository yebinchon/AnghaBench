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
struct tracing_data {int /*<<< orphan*/  temp_file; scalar_t__ temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tracing_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tracing_data *tdata)
{
	if (tdata->temp) {
		FUNC1(tdata->temp_file, 0);
		FUNC2(tdata->temp_file);
	}

	FUNC0(tdata);
}