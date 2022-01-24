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
struct idr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct idr*,void*,int /*<<< orphan*/ ) ; 

int FUNC2(struct idr *idp, void *ptr, int *id)
{
	int rv;

	rv = FUNC1(idp, ptr, 0);
	/*
	 * This is a cheap hack until the IDR code can be fixed to
	 * return proper error values.
	 */
	if (rv < 0)
		return FUNC0(rv);
	*id = rv;
	return 0;
}