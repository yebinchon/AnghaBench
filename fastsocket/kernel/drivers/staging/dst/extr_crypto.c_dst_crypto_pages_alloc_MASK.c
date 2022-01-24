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
struct dst_crypto_engine {int page_num; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dst_crypto_engine *e, int num)
{
	int i;

	e->pages = FUNC3(num * sizeof(struct page **), GFP_KERNEL);
	if (!e->pages)
		return -ENOMEM;

	for (i=0; i<num; ++i) {
		e->pages[i] = FUNC1(GFP_KERNEL);
		if (!e->pages[i])
			goto err_out_free_pages;
	}

	e->page_num = num;
	return 0;

err_out_free_pages:
	while (--i >= 0)
		FUNC0(e->pages[i]);

	FUNC2(e->pages);
	return -ENOMEM;
}