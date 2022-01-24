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
struct hv_vmbus_device_id {int* guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(const char *filename, struct hv_vmbus_device_id *id,
			  char *alias)
{
	int i;
	char guid_name[((sizeof(id->guid) + 1)) * 2];

	for (i = 0; i < (sizeof(id->guid) * 2); i += 2)
		FUNC0(&guid_name[i], "%02x", id->guid[i/2]);

	FUNC2(alias, "vmbus:");
	FUNC1(alias, guid_name);

	return 1;
}