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
struct hfs_btree {int dummy; } ;
struct hfs_bnode {struct page** page; scalar_t__ page_offset; struct hfs_btree* tree; } ;

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

void FUNC6(struct hfs_bnode *dst_node, int dst,
		    struct hfs_bnode *src_node, int src, int len)
{
	struct hfs_btree *tree;
	struct page **src_page, **dst_page;
	int l;

	FUNC0(DBG_BNODE_MOD, "copybytes: %u,%u,%u\n", dst, src, len);
	if (!len)
		return;
	tree = src_node->tree;
	src += src_node->page_offset;
	dst += dst_node->page_offset;
	src_page = src_node->page + (src >> PAGE_CACHE_SHIFT);
	src &= ~PAGE_CACHE_MASK;
	dst_page = dst_node->page + (dst >> PAGE_CACHE_SHIFT);
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