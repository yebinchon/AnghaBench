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
typedef  int uint_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ctf_buf_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void
FUNC2(ctf_buf_t *buf, int align)
{
	uint_t cur = FUNC0(buf);
	ssize_t topad = (align - (cur % align)) % align;
	static const char pad[8] = { 0 };

	while (topad > 0) {
		FUNC1(buf, pad, (topad > 8 ? 8 : topad));
		topad -= 8;
	}
}