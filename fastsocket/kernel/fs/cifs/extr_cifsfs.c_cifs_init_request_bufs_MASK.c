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

/* Variables and functions */
 int CIFSMaxBufSize ; 
 int ENOMEM ; 
 scalar_t__ MAX_CIFS_HDR_SIZE ; 
 scalar_t__ MAX_CIFS_SMALL_BUFFER_SIZE ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int cifs_min_rcv ; 
 int cifs_min_small ; 
 int /*<<< orphan*/ * cifs_req_cachep ; 
 int /*<<< orphan*/ * cifs_req_poolp ; 
 int /*<<< orphan*/ * cifs_sm_req_cachep ; 
 int /*<<< orphan*/ * cifs_sm_req_poolp ; 
 int /*<<< orphan*/ * FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void)
{
	if (CIFSMaxBufSize < 8192) {
	/* Buffer size can not be smaller than 2 * PATH_MAX since maximum
	Unicode path name has to fit in any SMB/CIFS path based frames */
		CIFSMaxBufSize = 8192;
	} else if (CIFSMaxBufSize > 1024*127) {
		CIFSMaxBufSize = 1024 * 127;
	} else {
		CIFSMaxBufSize &= 0x1FE00; /* Round size to even 512 byte mult*/
	}
/*	cERROR(1, "CIFSMaxBufSize %d 0x%x",CIFSMaxBufSize,CIFSMaxBufSize); */
	cifs_req_cachep = FUNC2("cifs_request",
					    CIFSMaxBufSize +
					    MAX_CIFS_HDR_SIZE, 0,
					    SLAB_HWCACHE_ALIGN, NULL);
	if (cifs_req_cachep == NULL)
		return -ENOMEM;

	if (cifs_min_rcv < 1)
		cifs_min_rcv = 1;
	else if (cifs_min_rcv > 64) {
		cifs_min_rcv = 64;
		FUNC0(1, "cifs_min_rcv set to maximum (64)");
	}

	cifs_req_poolp = FUNC4(cifs_min_rcv,
						  cifs_req_cachep);

	if (cifs_req_poolp == NULL) {
		FUNC3(cifs_req_cachep);
		return -ENOMEM;
	}
	/* MAX_CIFS_SMALL_BUFFER_SIZE bytes is enough for most SMB responses and
	almost all handle based requests (but not write response, nor is it
	sufficient for path based requests).  A smaller size would have
	been more efficient (compacting multiple slab items on one 4k page)
	for the case in which debug was on, but this larger size allows
	more SMBs to use small buffer alloc and is still much more
	efficient to alloc 1 per page off the slab compared to 17K (5page)
	alloc of large cifs buffers even when page debugging is on */
	cifs_sm_req_cachep = FUNC2("cifs_small_rq",
			MAX_CIFS_SMALL_BUFFER_SIZE, 0, SLAB_HWCACHE_ALIGN,
			NULL);
	if (cifs_sm_req_cachep == NULL) {
		FUNC5(cifs_req_poolp);
		FUNC3(cifs_req_cachep);
		return -ENOMEM;
	}

	if (cifs_min_small < 2)
		cifs_min_small = 2;
	else if (cifs_min_small > 256) {
		cifs_min_small = 256;
		FUNC1(1, "cifs_min_small set to maximum (256)");
	}

	cifs_sm_req_poolp = FUNC4(cifs_min_small,
						     cifs_sm_req_cachep);

	if (cifs_sm_req_poolp == NULL) {
		FUNC5(cifs_req_poolp);
		FUNC3(cifs_req_cachep);
		FUNC3(cifs_sm_req_cachep);
		return -ENOMEM;
	}

	return 0;
}