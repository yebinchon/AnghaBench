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
struct bio {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PSWPIN ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_swap_bio_read ; 
 struct bio* FUNC4 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct page *page)
{
	struct bio *bio;
	int ret = 0;

	FUNC2(!FUNC0(page));
	FUNC2(FUNC1(page));
	bio = FUNC4(GFP_KERNEL, page, end_swap_bio_read);
	if (bio == NULL) {
		FUNC6(page);
		ret = -ENOMEM;
		goto out;
	}
	FUNC3(PSWPIN);
	FUNC5(READ, bio);
out:
	return ret;
}