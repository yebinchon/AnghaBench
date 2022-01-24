#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int avail_in; int avail_out; int total_out; void* next_out; void* next_in; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 TYPE_1__ stream ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(void *dst, int dstlen, void *src, int srclen)
{
	int err;

	stream.next_in = src;
	stream.avail_in = srclen;

	stream.next_out = dst;
	stream.avail_out = dstlen;

	err = FUNC4(&stream);
	if (err != Z_OK) {
		FUNC0("zlib_inflateReset error %d\n", err);
		FUNC2(&stream);
		FUNC3(&stream);
	}

	err = FUNC1(&stream, Z_FINISH);
	if (err != Z_STREAM_END)
		goto err;
	return stream.total_out;

err:
	FUNC0("Error %d while decompressing!\n", err);
	FUNC0("%p(%d)->%p(%d)\n", src, srclen, dst, dstlen);
	return -EIO;
}