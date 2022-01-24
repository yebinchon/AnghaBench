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
typedef  void nfs_cache_array ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct page*) ; 

__attribute__((used)) static
struct nfs_cache_array *FUNC2(struct page *page)
{
	void *ptr;
	if (page == NULL)
		return FUNC0(-EIO);
	ptr = FUNC1(page);
	if (ptr == NULL)
		return FUNC0(-ENOMEM);
	return ptr;
}