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
struct nfs_fh {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFS_MAXFHSIZE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC5(__be32 *p, struct nfs_fh *f)
{
	FUNC3(f->data, 0, sizeof(f->data));
	f->size = FUNC4(*p++);
	if (f->size > NFS_MAXFHSIZE) {
		FUNC1("lockd: bad fhandle size %d (should be <=%d)\n",
			f->size, NFS_MAXFHSIZE);
		return NULL;
	}
      	FUNC2(f->data, p, f->size);
	return p + FUNC0(f->size);
}