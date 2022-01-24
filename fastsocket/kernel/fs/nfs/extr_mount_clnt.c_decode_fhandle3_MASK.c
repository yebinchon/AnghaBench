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
struct nfs_fh {int size; int /*<<< orphan*/  data; } ;
struct mountres {struct nfs_fh* fh; } ;
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int NFS3_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct mountres *res)
{
	struct nfs_fh *fh = res->fh;
	u32 size;
	__be32 *p;

	p = FUNC3(xdr, sizeof(size));
	if (FUNC2(p == NULL))
		return -EIO;

	size = FUNC1(*p++);
	if (size > NFS3_FHSIZE || size == 0)
		return -EIO;

	p = FUNC3(xdr, size);
	if (FUNC2(p == NULL))
		return -EIO;

	fh->size = size;
	FUNC0(fh->data, p, size);
	return 0;
}