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
struct inquiry_entry {void* timestamp; int /*<<< orphan*/  data; struct inquiry_entry* next; } ;
struct inquiry_data {int /*<<< orphan*/  bdaddr; } ;
struct inquiry_cache {void* timestamp; struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct inquiry_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct inquiry_entry* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 void* jiffies ; 
 struct inquiry_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inquiry_data*,int) ; 

void FUNC5(struct hci_dev *hdev, struct inquiry_data *data)
{
	struct inquiry_cache *cache = &hdev->inq_cache;
	struct inquiry_entry *e;

	FUNC0("cache %p, %s", cache, FUNC1(&data->bdaddr));

	if (!(e = FUNC2(hdev, &data->bdaddr))) {
		/* Entry not in the cache. Add new one. */
		if (!(e = FUNC3(sizeof(struct inquiry_entry), GFP_ATOMIC)))
			return;
		e->next     = cache->list;
		cache->list = e;
	}

	FUNC4(&e->data, data, sizeof(*data));
	e->timestamp = jiffies;
	cache->timestamp = jiffies;
}