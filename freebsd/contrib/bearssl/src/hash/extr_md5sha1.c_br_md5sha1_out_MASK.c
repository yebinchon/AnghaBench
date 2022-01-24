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
typedef  int uint64_t ;
typedef  unsigned char uint32_t ;
struct TYPE_3__ {int count; int /*<<< orphan*/  val_sha1; int /*<<< orphan*/  val_md5; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ br_md5sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void
FUNC8(const br_md5sha1_context *cc, void *dst)
{
	unsigned char buf[64];
	uint32_t val_md5[4];
	uint32_t val_sha1[5];
	size_t ptr;
	unsigned char *out;
	uint64_t count;

	count = cc->count;
	ptr = (size_t)count & 63;
	FUNC6(buf, cc->buf, ptr);
	FUNC6(val_md5, cc->val_md5, sizeof val_md5);
	FUNC6(val_sha1, cc->val_sha1, sizeof val_sha1);
	buf[ptr ++] = 0x80;
	if (ptr > 56) {
		FUNC7(buf + ptr, 0, 64 - ptr);
		FUNC2(buf, val_md5);
		FUNC5(buf, val_sha1);
		FUNC7(buf, 0, 56);
	} else {
		FUNC7(buf + ptr, 0, 56 - ptr);
	}
	count <<= 3;
	FUNC1(buf + 56, count);
	FUNC2(buf, val_md5);
	FUNC0(buf + 56, count);
	FUNC5(buf, val_sha1);
	out = dst;
	FUNC4(out, val_md5, 4);
	FUNC3(out + 16, val_sha1, 5);
}