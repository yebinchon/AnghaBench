#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ verbose; } ;
typedef  TYPE_1__ ccert_context ;
typedef  int /*<<< orphan*/  br_ssl_client_certificate_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(const br_ssl_client_certificate_class **pctx,
	const unsigned char *data, size_t len)
{
	ccert_context *zc;

	zc = (ccert_context *)pctx;
	if (zc->verbose) {
		size_t u;

		for (u = 0; u < len; u ++) {
			if (u == 0) {
				FUNC0(stderr, "  ");
			} else if (u > 0 && u % 16 == 0) {
				FUNC0(stderr, "\n  ");
			}
			FUNC0(stderr, " %02x", data[u]);
		}
		if (len > 0) {
			FUNC0(stderr, "\n");
		}
	}
}