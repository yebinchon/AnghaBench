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
typedef  unsigned char uint64_t ;
struct TYPE_3__ {int count; int /*<<< orphan*/  val; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ br_sha384_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*) ; 

__attribute__((used)) static void
FUNC5(const br_sha384_context *cc, void *dst, int num)
{
	unsigned char buf[128];
	uint64_t val[8];
	size_t ptr;

	ptr = (size_t)cc->count & 127;
	FUNC2(buf, cc->buf, ptr);
	FUNC2(val, cc->val, sizeof val);
	buf[ptr ++] = 0x80;
	if (ptr > 112) {
		FUNC3(buf + ptr, 0, 128 - ptr);
		FUNC4(buf, val);
		FUNC3(buf, 0, 112);
	} else {
		FUNC3(buf + ptr, 0, 112 - ptr);
	}
	FUNC0(buf + 112, cc->count >> 61);
	FUNC0(buf + 120, cc->count << 3);
	FUNC4(buf, val);
	FUNC1(dst, val, num);
}