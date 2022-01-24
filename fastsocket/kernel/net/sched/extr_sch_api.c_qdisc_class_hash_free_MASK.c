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
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_head*) ; 

__attribute__((used)) static void FUNC3(struct hlist_head *h, unsigned int n)
{
	unsigned int size = n * sizeof(struct hlist_head);

	if (size <= PAGE_SIZE)
		FUNC2(h);
	else
		FUNC0((unsigned long)h, FUNC1(size));
}