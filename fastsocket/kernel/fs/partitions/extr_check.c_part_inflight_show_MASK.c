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
struct hd_struct {int* in_flight; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct hd_struct* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 

ssize_t FUNC2(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct hd_struct *p = FUNC0(dev);

	return FUNC1(buf, "%8u %8u\n", p->in_flight[0], p->in_flight[1]);
}