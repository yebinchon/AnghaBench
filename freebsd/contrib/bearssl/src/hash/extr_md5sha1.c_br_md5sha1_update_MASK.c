#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  val_sha1; scalar_t__ buf; int /*<<< orphan*/  val_md5; scalar_t__ count; } ;
typedef  TYPE_1__ br_md5sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char const*,size_t) ; 

void
FUNC3(br_md5sha1_context *cc, const void *data, size_t len)
{
	const unsigned char *buf;
	size_t ptr;

	buf = data;
	ptr = (size_t)cc->count & 63;
	while (len > 0) {
		size_t clen;

		clen = 64 - ptr;
		if (clen > len) {
			clen = len;
		}
		FUNC2(cc->buf + ptr, buf, clen);
		ptr += clen;
		buf += clen;
		len -= clen;
		cc->count += (uint64_t)clen;
		if (ptr == 64) {
			FUNC0(cc->buf, cc->val_md5);
			FUNC1(cc->buf, cc->val_sha1);
			ptr = 0;
		}
	}
}