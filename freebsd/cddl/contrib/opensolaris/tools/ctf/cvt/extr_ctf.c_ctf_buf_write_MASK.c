#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ctb_ptr; scalar_t__ ctb_end; } ;
typedef  TYPE_1__ ctf_buf_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void const*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(ctf_buf_t *b, void const *p, size_t n)
{
	size_t len;

	while (n != 0) {
		if (b->ctb_ptr == b->ctb_end)
			FUNC2(b);

		len = FUNC0((size_t)(b->ctb_end - b->ctb_ptr), n);
		FUNC1(p, b->ctb_ptr, len);
		b->ctb_ptr += len;

		p = (char const *)p + len;
		n -= len;
	}
}