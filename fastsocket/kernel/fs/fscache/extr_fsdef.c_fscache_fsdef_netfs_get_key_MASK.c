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
typedef  unsigned int uint16_t ;
struct fscache_netfs {int /*<<< orphan*/  name; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC3(const void *cookie_netfs_data,
					    void *buffer, uint16_t bufmax)
{
	const struct fscache_netfs *netfs = cookie_netfs_data;
	unsigned klen;

	FUNC0("{%s.%u},", netfs->name, netfs->version);

	klen = FUNC2(netfs->name);
	if (klen > bufmax)
		return 0;

	FUNC1(buffer, netfs->name, klen);
	return klen;
}