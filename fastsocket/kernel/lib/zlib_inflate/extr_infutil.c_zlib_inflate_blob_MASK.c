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
typedef  int /*<<< orphan*/  u8 ;
struct z_stream_s {unsigned int avail_in; unsigned int avail_out; struct z_stream_s* workspace; void* next_out; int /*<<< orphan*/  const* next_in; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_WBITS ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (struct z_stream_s*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct z_stream_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct z_stream_s*) ; 
 int FUNC4 (struct z_stream_s*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

int FUNC6(void *gunzip_buf, unsigned int sz,
		      const void *buf, unsigned int len)
{
	const u8 *zbuf = buf;
	struct z_stream_s *strm;
	int rc;

	rc = -ENOMEM;
	strm = FUNC1(sizeof(*strm), GFP_KERNEL);
	if (strm == NULL)
		goto gunzip_nomem1;
	strm->workspace = FUNC1(FUNC5(), GFP_KERNEL);
	if (strm->workspace == NULL)
		goto gunzip_nomem2;

	/* gzip header (1f,8b,08... 10 bytes total + possible asciz filename)
	 * expected to be stripped from input
	 */
	strm->next_in = zbuf;
	strm->avail_in = len;
	strm->next_out = gunzip_buf;
	strm->avail_out = sz;

	rc = FUNC4(strm, -MAX_WBITS);
	if (rc == Z_OK) {
		rc = FUNC2(strm, Z_FINISH);
		/* after Z_FINISH, only Z_STREAM_END is "we unpacked it all" */
		if (rc == Z_STREAM_END)
			rc = sz - strm->avail_out;
		else
			rc = -EINVAL;
		FUNC3(strm);
	} else
		rc = -EINVAL;

	FUNC0(strm->workspace);
gunzip_nomem2:
	FUNC0(strm);
gunzip_nomem1:
	return rc; /* returns Z_OK (0) if successful */
}