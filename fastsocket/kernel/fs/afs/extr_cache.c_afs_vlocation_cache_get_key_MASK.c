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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct afs_vlocation {TYPE_1__ vldb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint16_t FUNC4(const void *cookie_netfs_data,
					    void *buffer, uint16_t bufmax)
{
	const struct afs_vlocation *vlocation = cookie_netfs_data;
	uint16_t klen;

	FUNC0("{%s},%p,%u", vlocation->vldb.name, buffer, bufmax);

	klen = FUNC3(vlocation->vldb.name, sizeof(vlocation->vldb.name));
	if (klen > bufmax)
		return 0;

	FUNC2(buffer, vlocation->vldb.name, klen);

	FUNC1(" = %u", klen);
	return klen;
}