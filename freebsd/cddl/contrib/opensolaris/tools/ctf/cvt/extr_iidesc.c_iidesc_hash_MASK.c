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
struct TYPE_2__ {scalar_t__ ii_name; } ;
typedef  TYPE_1__ iidesc_t ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 

int
FUNC1(int nbuckets, void *arg)
{
	iidesc_t *ii = arg;
	int h = 0;

	if (ii->ii_name)
		return (FUNC0(nbuckets, ii->ii_name));

	return (h);
}