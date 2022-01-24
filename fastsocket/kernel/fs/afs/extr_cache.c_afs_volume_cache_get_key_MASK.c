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
typedef  int uint16_t ;
struct afs_volume {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint16_t FUNC3(const void *cookie_netfs_data,
					void *buffer, uint16_t bufmax)
{
	const struct afs_volume *volume = cookie_netfs_data;
	uint16_t klen;

	FUNC0("{%u},%p,%u", volume->type, buffer, bufmax);

	klen = sizeof(volume->type);
	if (klen > bufmax)
		return 0;

	FUNC2(buffer, &volume->type, sizeof(volume->type));

	FUNC1(" = %u", klen);
	return klen;

}