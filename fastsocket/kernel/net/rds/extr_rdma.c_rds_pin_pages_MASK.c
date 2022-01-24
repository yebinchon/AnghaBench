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
struct page {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (unsigned long,unsigned int,int,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static int FUNC2(unsigned long user_addr, unsigned int nr_pages,
			struct page **pages, int write)
{
	int ret;

	ret = FUNC0(user_addr, nr_pages, write, pages);

	if (ret >= 0 && ret < nr_pages) {
		while (ret--)
			FUNC1(pages[ret]);
		ret = -EFAULT;
	}

	return ret;
}