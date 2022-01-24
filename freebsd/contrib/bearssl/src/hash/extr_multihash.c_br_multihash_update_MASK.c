#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  vtable; } ;
typedef  TYPE_1__ gen_hash_context ;
struct TYPE_6__ {scalar_t__ buf; scalar_t__ count; TYPE_3__** impl; } ;
typedef  TYPE_2__ br_multihash_context ;
struct TYPE_7__ {int /*<<< orphan*/  (* state ) (int /*<<< orphan*/ *,unsigned char*) ;int /*<<< orphan*/  (* update ) (int /*<<< orphan*/ *,scalar_t__,int) ;int /*<<< orphan*/  (* set_state ) (int /*<<< orphan*/ *,unsigned char*,scalar_t__) ;} ;
typedef  TYPE_3__ br_hash_class ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*) ; 

void
FUNC5(br_multihash_context *ctx, const void *data, size_t len)
{
	const unsigned char *buf;
	size_t ptr;

	buf = data;
	ptr = (size_t)ctx->count & 127;
	while (len > 0) {
		size_t clen;

		clen = 128 - ptr;
		if (clen > len) {
			clen = len;
		}
		FUNC1(ctx->buf + ptr, buf, clen);
		ptr += clen;
		buf += clen;
		len -= clen;
		ctx->count += (uint64_t)clen;
		if (ptr == 128) {
			int i;

			for (i = 1; i <= 6; i ++) {
				const br_hash_class *hc;

				hc = ctx->impl[i - 1];
				if (hc != NULL) {
					gen_hash_context g;
					unsigned char *state;

					state = (unsigned char *)ctx
						+ FUNC0(i);
					hc->set_state(&g.vtable,
						state, ctx->count - 128);
					hc->update(&g.vtable, ctx->buf, 128);
					hc->state(&g.vtable, state);
				}
			}
			ptr = 0;
		}
	}
}