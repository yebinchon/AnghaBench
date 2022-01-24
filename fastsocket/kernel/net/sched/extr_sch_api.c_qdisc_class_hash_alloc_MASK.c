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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hlist_head*) ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct hlist_head* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hlist_head *FUNC4(unsigned int n)
{
	unsigned int size = n * sizeof(struct hlist_head), i;
	struct hlist_head *h;

	if (size <= PAGE_SIZE)
		h = FUNC3(size, GFP_KERNEL);
	else
		h = (struct hlist_head *)
			FUNC1(GFP_KERNEL, FUNC2(size));

	if (h != NULL) {
		for (i = 0; i < n; i++)
			FUNC0(&h[i]);
	}
	return h;
}