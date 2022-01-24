#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ hbuf_out; scalar_t__ saved_hbuf_out; int /*<<< orphan*/  hlen_out; } ;
typedef  TYPE_1__ br_ssl_engine_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(br_ssl_engine_context *cc)
{
	if (cc->hbuf_out != cc->saved_hbuf_out) {
		FUNC1(cc, cc->hbuf_out - cc->saved_hbuf_out);
	}
	if (FUNC0(cc)) {
		FUNC3(cc, 0);
	}
	cc->saved_hbuf_out = cc->hbuf_out = FUNC2(cc, &cc->hlen_out);
}