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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct hstate {scalar_t__ order; unsigned long nr_overcommit_huge_pages; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAX_ORDER ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 struct hstate* FUNC0 (struct kobject*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
		struct kobj_attribute *attr, const char *buf, size_t count)
{
	int err;
	unsigned long input;
	struct hstate *h = FUNC0(kobj, NULL);

	if (h->order >= MAX_ORDER)
		return -EINVAL;

	err = FUNC3(buf, 10, &input);
	if (err)
		return err;

	FUNC1(&hugetlb_lock);
	h->nr_overcommit_huge_pages = input;
	FUNC2(&hugetlb_lock);

	return count;
}