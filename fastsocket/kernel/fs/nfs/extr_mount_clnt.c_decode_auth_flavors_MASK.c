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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct mountres {unsigned int* auth_count; void** auth_flavors; } ;
typedef  void* rpc_authflavor_t ;
typedef  int /*<<< orphan*/  entries ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int NFS_MAX_SECFLAVORS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct mountres *res)
{
	rpc_authflavor_t *flavors = res->auth_flavors;
	unsigned int *count = res->auth_count;
	u32 entries, i;
	__be32 *p;

	if (*count == 0)
		return 0;

	p = FUNC3(xdr, sizeof(entries));
	if (FUNC2(p == NULL))
		return -EIO;
	entries = FUNC1(*p);
	FUNC0("NFS: received %u auth flavors\n", entries);
	if (entries > NFS_MAX_SECFLAVORS)
		entries = NFS_MAX_SECFLAVORS;

	p = FUNC3(xdr, sizeof(u32) * entries);
	if (FUNC2(p == NULL))
		return -EIO;

	if (entries > *count)
		entries = *count;

	for (i = 0; i < entries; i++) {
		flavors[i] = FUNC1(*p++);
		FUNC0("NFS:   auth flavor[%u]: %d\n", i, flavors[i]);
	}
	*count = i;

	return 0;
}