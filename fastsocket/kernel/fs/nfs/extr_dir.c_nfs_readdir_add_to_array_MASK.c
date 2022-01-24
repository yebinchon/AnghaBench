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
struct nfs_entry {scalar_t__ eof; int /*<<< orphan*/  cookie; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  d_type; int /*<<< orphan*/  ino; int /*<<< orphan*/  prev_cookie; } ;
struct nfs_cache_array_entry {int /*<<< orphan*/  string; int /*<<< orphan*/  d_type; int /*<<< orphan*/  ino; int /*<<< orphan*/  cookie; } ;
struct nfs_cache_array {size_t size; size_t eof_index; int /*<<< orphan*/  last_cookie; struct nfs_cache_array_entry* array; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct nfs_cache_array*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct nfs_cache_array*) ; 
 struct nfs_cache_array* FUNC2 (struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 

__attribute__((used)) static
int FUNC6(struct nfs_entry *entry, struct page *page)
{
	struct nfs_cache_array *array = FUNC2(page);
	struct nfs_cache_array_entry *cache_entry;
	int ret;

	if (FUNC0(array))
		return FUNC1(array);

	cache_entry = &array->array[array->size];

	/* Check that this entry lies within the page bounds */
	ret = -ENOSPC;
	if ((char *)&cache_entry[1] - (char *)FUNC5(page) > PAGE_SIZE)
		goto out;

	cache_entry->cookie = entry->prev_cookie;
	cache_entry->ino = entry->ino;
	cache_entry->d_type = entry->d_type;
	ret = FUNC3(&cache_entry->string, entry->name, entry->len);
	if (ret)
		goto out;
	array->last_cookie = entry->cookie;
	array->size++;
	if (entry->eof != 0)
		array->eof_index = array->size;
out:
	FUNC4(page);
	return ret;
}