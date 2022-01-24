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
struct virtio_device_id {scalar_t__ device; scalar_t__ vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ VIRTIO_DEV_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename, struct virtio_device_id *id,
			   char *alias)
{
	id->device = FUNC1(id->device);
	id->vendor = FUNC1(id->vendor);

	FUNC3(alias, "virtio:");
	FUNC0(alias, "d", id->device != VIRTIO_DEV_ANY_ID, id->device);
	FUNC0(alias, "v", id->vendor != VIRTIO_DEV_ANY_ID, id->vendor);

	FUNC2(alias);
	return 1;
}