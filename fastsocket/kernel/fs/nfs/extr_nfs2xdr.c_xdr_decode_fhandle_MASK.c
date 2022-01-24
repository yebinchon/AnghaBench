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
struct nfs_fh {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS2_FHSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __be32 *
FUNC2(__be32 *p, struct nfs_fh *fhandle)
{
	/* NFSv2 handles have a fixed length */
	fhandle->size = NFS2_FHSIZE;
	FUNC1(fhandle->data, p, NFS2_FHSIZE);
	return p + FUNC0(NFS2_FHSIZE);
}