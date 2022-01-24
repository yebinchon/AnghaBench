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
struct hid_device_id {int bus; int vendor; int product; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 scalar_t__ HID_ANY_ID ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(const char *filename,
			     struct hid_device_id *id, char *alias)
{
	id->bus = FUNC1(id->bus);
	id->vendor = FUNC1(id->vendor);
	id->product = FUNC1(id->product);

	FUNC2(alias, "hid:b%04X", id->bus);
	FUNC0(alias, "v", id->vendor != HID_ANY_ID, id->vendor);
	FUNC0(alias, "p", id->product != HID_ANY_ID, id->product);

	return 1;
}