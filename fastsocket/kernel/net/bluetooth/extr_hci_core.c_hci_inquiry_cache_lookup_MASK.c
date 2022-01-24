#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bdaddr; } ;
struct inquiry_entry {TYPE_1__ data; struct inquiry_entry* next; } ;
struct inquiry_cache {struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct inquiry_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct inquiry_entry *FUNC3(struct hci_dev *hdev, bdaddr_t *bdaddr)
{
	struct inquiry_cache *cache = &hdev->inq_cache;
	struct inquiry_entry *e;

	FUNC0("cache %p, %s", cache, FUNC2(bdaddr));

	for (e = cache->list; e; e = e->next)
		if (!FUNC1(&e->data.bdaddr, bdaddr))
			break;
	return e;
}