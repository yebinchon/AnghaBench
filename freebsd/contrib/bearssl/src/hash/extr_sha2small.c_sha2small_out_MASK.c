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
typedef  unsigned char uint32_t ;
struct TYPE_3__ {int count; int /*<<< orphan*/  val; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ br_sha224_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(const br_sha224_context *cc, void *dst, int num)
{
	unsigned char buf[64];
	uint32_t val[8];
	size_t ptr;

	ptr = (size_t)cc->count & 63;
	FUNC3(buf, cc->buf, ptr);
	FUNC3(val, cc->val, sizeof val);
	buf[ptr ++] = 0x80;
	if (ptr > 56) {
		FUNC4(buf + ptr, 0, 64 - ptr);
		FUNC2(buf, val);
		FUNC4(buf, 0, 56);
	} else {
		FUNC4(buf + ptr, 0, 56 - ptr);
	}
	FUNC0(buf + 56, cc->count << 3);
	FUNC2(buf, val);
	FUNC1(dst, val, num);
}