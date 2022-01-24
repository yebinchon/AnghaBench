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
struct scatterlist {scalar_t__ page_link; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 unsigned int FUNC0 (void*) ; 
 unsigned int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,unsigned int,unsigned int) ; 
 struct page* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct scatterlist *sgl, void *buf,
		int nents, unsigned int len)
{
	int n;
	unsigned int l;
	unsigned int off;
	struct page *page;

	if (!nents)
		return 0;

	if (!len)
		return 0;

	n = 0;
	page = FUNC3(buf);
	off = FUNC0(buf);
	l = 0;

	while (len >= l + PAGE_SIZE - off) {
		struct page *npage;

		l += PAGE_SIZE;
		buf += PAGE_SIZE;
		npage = FUNC3(buf);
		if (FUNC1(page) != FUNC1(npage) - l) {
			sgl->page_link = 0;
			FUNC2(sgl++, page, l - off, off);
			if (++n == nents)
				return n;
			page = npage;
			len -= l - off;
			l = off = 0;
		}
	}
	sgl->page_link = 0;
	FUNC2(sgl++, page, len, off);
	return n + 1;
}