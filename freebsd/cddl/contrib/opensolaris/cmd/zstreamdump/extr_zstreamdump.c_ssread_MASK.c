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
typedef  int /*<<< orphan*/  zio_cksum_t ;

/* Variables and functions */
 scalar_t__ do_byteswap ; 
 scalar_t__ do_cksum ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (void*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_stream ; 
 size_t total_stream_len ; 

__attribute__((used)) static size_t
FUNC3(void *buf, size_t len, zio_cksum_t *cksum)
{
	size_t outlen;

	if ((outlen = FUNC2(buf, len, 1, send_stream)) == 0)
		return (0);

	if (do_cksum) {
		if (do_byteswap)
			FUNC0(buf, len, cksum);
		else
			FUNC1(buf, len, cksum);
	}
	total_stream_len += len;
	return (outlen);
}