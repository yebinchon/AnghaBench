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
struct sdio_device_id {scalar_t__ class; scalar_t__ vendor; scalar_t__ device; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 scalar_t__ SDIO_ANY_ID ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			struct sdio_device_id *id, char *alias)
{
	id->class = FUNC1(id->class);
	id->vendor = FUNC1(id->vendor);
	id->device = FUNC1(id->device);

	FUNC3(alias, "sdio:");
	FUNC0(alias, "c", id->class != (__u8)SDIO_ANY_ID, id->class);
	FUNC0(alias, "v", id->vendor != (__u16)SDIO_ANY_ID, id->vendor);
	FUNC0(alias, "d", id->device != (__u16)SDIO_ANY_ID, id->device);
	FUNC2(alias);
	return 1;
}