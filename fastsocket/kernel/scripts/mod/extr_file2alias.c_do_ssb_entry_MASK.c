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
struct ssb_device_id {scalar_t__ vendor; scalar_t__ coreid; scalar_t__ revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 scalar_t__ SSB_ANY_ID ; 
 scalar_t__ SSB_ANY_REV ; 
 scalar_t__ SSB_ANY_VENDOR ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			struct ssb_device_id *id, char *alias)
{
	id->vendor = FUNC1(id->vendor);
	id->coreid = FUNC1(id->coreid);
	id->revision = FUNC1(id->revision);

	FUNC3(alias, "ssb:");
	FUNC0(alias, "v", id->vendor != SSB_ANY_VENDOR, id->vendor);
	FUNC0(alias, "id", id->coreid != SSB_ANY_ID, id->coreid);
	FUNC0(alias, "rev", id->revision != SSB_ANY_REV, id->revision);
	FUNC2(alias);
	return 1;
}