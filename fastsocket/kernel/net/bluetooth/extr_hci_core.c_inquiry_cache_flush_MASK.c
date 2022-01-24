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
struct inquiry_entry {struct inquiry_entry* next; } ;
struct inquiry_cache {struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct inquiry_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct inquiry_entry*) ; 

__attribute__((used)) static void FUNC2(struct hci_dev *hdev)
{
	struct inquiry_cache *cache = &hdev->inq_cache;
	struct inquiry_entry *next  = cache->list, *e;

	FUNC0("cache %p", cache);

	cache->list = NULL;
	while ((e = next)) {
		next = e->next;
		FUNC1(e);
	}
}