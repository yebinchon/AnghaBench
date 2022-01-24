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
 int /*<<< orphan*/  FUNC0 (struct idr*,int) ; 
 int /*<<< orphan*/  iio_idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct idr *this_idr, int id)
{
	FUNC1(&iio_idr_lock);
	FUNC0(this_idr, id);
	FUNC2(&iio_idr_lock);
}