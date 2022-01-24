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
 scalar_t__ BR_ERR_OK ; 
 scalar_t__ BR_SSL_CLOSED ; 
 int /*<<< orphan*/  BR_SSL_RECVAPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC6(br_sslio_context *ctx)
{
	FUNC0(ctx->engine);
	while (FUNC1(ctx->engine) != BR_SSL_CLOSED) {
		/*
		 * Discard any incoming application data.
		 */
		size_t len;

		FUNC5(ctx, BR_SSL_RECVAPP);
		if (FUNC4(ctx->engine, &len) != NULL) {
			FUNC3(ctx->engine, len);
		}
	}
	return FUNC2(ctx->engine) == BR_ERR_OK;
}