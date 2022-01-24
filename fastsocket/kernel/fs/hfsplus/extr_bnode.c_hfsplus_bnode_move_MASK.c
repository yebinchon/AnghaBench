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
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_BNODE_MOD ; 
 int PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

void FUNC6(struct hfs_bnode *node, int dst, int src, int len)
{
	struct page **src_page, **dst_page;
	int l;

	FUNC0(DBG_BNODE_MOD, "movebytes: %u,%u,%u\n", dst, src, len);
	if (!len)
		return;
	src += node->page_offset;
	dst += node->page_offset;
	if (dst > src) {
		src += len - 1;
		src_page = node->page + (src >> PAGE_CACHE_SHIFT);
		src = (src & ~PAGE_CACHE_MASK) + 1;
		dst += len - 1;
		dst_page = node->page + (dst >> PAGE_CACHE_SHIFT);
		dst = (dst & ~PAGE_CACHE_MASK) + 1;

		if (src == dst) {
			while (src < len) {
				FUNC3(FUNC1(*dst_page), FUNC1(*src_page), src);
				FUNC2(*src_page);
				FUNC5(*dst_page);
				FUNC2(*dst_page);
				len -= src;
				src = PAGE_CACHE_SIZE;
				src_page--;
				dst_page--;
			}
			src -= len;
			FUNC3(FUNC1(*dst_page) + src, FUNC1(*src_page) + src, len);
			FUNC2(*src_page);
			FUNC5(*dst_page);
			FUNC2(*dst_page);
		} else {
			void *src_ptr, *dst_ptr;

			do {
				src_ptr = FUNC1(*src_page) + src;
				dst_ptr = FUNC1(*dst_page) + dst;
				if (src < dst) {
					l = src;
					src = PAGE_CACHE_SIZE;
					dst -= l;
				} else {
					l = dst;
					src -= l;
					dst = PAGE_CACHE_SIZE;
				}
				l = FUNC4(len, l);
				FUNC3(dst_ptr - l, src_ptr - l, l);
				FUNC2(*src_page);
				FUNC5(*dst_page);
				FUNC2(*dst_page);
				if (dst == PAGE_CACHE_SIZE)
					dst_page--;
				else
					src_page--;
			} while ((len -= l));
		}
	} else {
		src_page = node->page + (src >> PAGE_CACHE_SHIFT);
		src &= ~PAGE_CACHE_MASK;
		dst_page = node->page + (dst >> PAGE_CACHE_SHIFT);
		dst &= ~PAGE_CACHE_MASK;

		if (src == dst) {
			l = FUNC4(len, (int)PAGE_CACHE_SIZE - src);
			FUNC3(FUNC1(*dst_page) + src, FUNC1(*src_page) + src, l);
			FUNC2(*src_page);
			FUNC5(*dst_page);
			FUNC2(*dst_page);

			while ((len -= l) != 0) {
				l = FUNC4(len, (int)PAGE_CACHE_SIZE);
				FUNC3(FUNC1(*++dst_page), FUNC1(*++src_page), l);
				FUNC2(*src_page);
				FUNC5(*dst_page);
				FUNC2(*dst_page);
			}
		} else {
			void *src_ptr, *dst_ptr;

			do {
				src_ptr = FUNC1(*src_page) + src;
				dst_ptr = FUNC1(*dst_page) + dst;
				if (PAGE_CACHE_SIZE - src < PAGE_CACHE_SIZE - dst) {
					l = PAGE_CACHE_SIZE - src;
					src = 0;
					dst += l;
				} else {
					l = PAGE_CACHE_SIZE - dst;
					src += l;
					dst = 0;
				}
				l = FUNC4(len, l);
				FUNC3(dst_ptr, src_ptr, l);
				FUNC2(*src_page);
				FUNC5(*dst_page);
				FUNC2(*dst_page);
				if (!dst)
					dst_page++;
				else
					src_page++;
			} while ((len -= l));
		}
	}
}