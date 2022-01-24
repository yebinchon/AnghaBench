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
struct inquiry_data {int pscan_rep_mode; int pscan_period_mode; int pscan_mode; int* dev_class; int rssi; int ssp_mode; int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  bdaddr; } ;
struct inquiry_entry {int /*<<< orphan*/  timestamp; struct inquiry_data data; struct inquiry_entry* next; } ;
struct inquiry_cache {struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 struct hci_dev* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (char*,char*,char*,int,int,int,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct hci_dev *hdev = FUNC3(dev);
	struct inquiry_cache *cache = &hdev->inq_cache;
	struct inquiry_entry *e;
	int n = 0;

	FUNC4(hdev);

	for (e = cache->list; e; e = e->next) {
		struct inquiry_data *data = &e->data;
		bdaddr_t bdaddr;
		FUNC1(&bdaddr, &data->bdaddr);
		n += FUNC6(buf + n, "%s %d %d %d 0x%.2x%.2x%.2x 0x%.4x %d %d %u\n",
				FUNC2(&bdaddr),
				data->pscan_rep_mode, data->pscan_period_mode,
				data->pscan_mode, data->dev_class[2],
				data->dev_class[1], data->dev_class[0],
				FUNC0(data->clock_offset),
				data->rssi, data->ssp_mode, e->timestamp);
	}

	FUNC5(hdev);
	return n;
}