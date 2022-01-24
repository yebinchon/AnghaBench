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
typedef  int /*<<< orphan*/  u_long ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

struct page *
FUNC6(struct address_space *mapping, u_long n)
{
	struct page *			pp;

	pp = FUNC4(mapping, n, NULL);

	if (!FUNC1(pp)) {
		FUNC3(pp);
		/** if (!PageChecked(pp)) **/
			/** vxfs_check_page(pp); **/
		if (FUNC2(pp))
			goto fail;
	}
	
	return (pp);
		 
fail:
	FUNC5(pp);
	return FUNC0(-EIO);
}