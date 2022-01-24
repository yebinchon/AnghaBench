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
struct TYPE_4__ {int /*<<< orphan*/  engine; } ;
typedef  TYPE_1__ br_sslio_context ;

/* Variables and functions */
 int /*<<< orphan*/  BR_SSL_RECVAPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned char*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC4(br_sslio_context *ctx, void *dst, size_t len)
{
	unsigned char *buf;
	size_t alen;

	if (len == 0) {
		return 0;
	}
	if (FUNC3(ctx, BR_SSL_RECVAPP) < 0) {
		return -1;
	}
	buf = FUNC1(ctx->engine, &alen);
	if (alen > len) {
		alen = len;
	}
	FUNC2(dst, buf, alen);
	FUNC0(ctx->engine, alen);
	return (int)alen;
}