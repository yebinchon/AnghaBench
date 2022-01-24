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
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_BADHANDLE ; 
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int NFS4_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC6(struct xdr_stream *xdr, struct nfs_fh *fh)
{
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (FUNC5(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE);
	fh->size = FUNC3(*p);
	if (fh->size > NFS4_FHSIZE)
		return FUNC0(NFS4ERR_BADHANDLE);
	p = FUNC4(xdr, fh->size);
	if (FUNC5(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE);
	FUNC1(&fh->data[0], p, fh->size);
	FUNC2(&fh->data[fh->size], 0, sizeof(fh->data) - fh->size);
	return 0;
}