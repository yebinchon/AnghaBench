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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 

void *
FUNC2(dtrace_hdl_t *dtp, size_t size)
{
	void *data;

	if ((data = FUNC1(size)) == NULL)
		(void) FUNC0(dtp, EDT_NOMEM);

	return (data);
}