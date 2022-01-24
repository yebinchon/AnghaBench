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
struct TYPE_3__ {size_t len; scalar_t__ ptr; int /*<<< orphan*/  buf; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ rng_fake_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  rng_fake_vtable ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(rng_fake_ctx *cc, const void *params,
	const void *seed, size_t len)
{
	(void)params;
	if (len > sizeof cc->buf) {
		FUNC1(stderr, "seed is too large (%lu bytes)\n",
			(unsigned long)len);
		FUNC0(EXIT_FAILURE);
	}
	cc->vtable = &rng_fake_vtable;
	FUNC2(cc->buf, seed, len);
	cc->ptr = 0;
	cc->len = len;
}