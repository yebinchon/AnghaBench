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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ rs_handle; scalar_t__ rs_length; int /*<<< orphan*/  rs_offset; } ;
struct rpcrdma_read_chunk {scalar_t__ rc_discrim; scalar_t__ rc_position; TYPE_1__ rc_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,struct rpcrdma_read_chunk*) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_zero ; 

__attribute__((used)) static u32 *FUNC4(u32 *va, u32 *vaend)
{
	struct rpcrdma_read_chunk *ch = (struct rpcrdma_read_chunk *)va;

	while (ch->rc_discrim != xdr_zero) {
		u64 ch_offset;

		if (((unsigned long)ch + sizeof(struct rpcrdma_read_chunk)) >
		    (unsigned long)vaend) {
			FUNC0("svcrdma: vaend=%p, ch=%p\n", vaend, ch);
			return NULL;
		}

		ch->rc_discrim = FUNC1(ch->rc_discrim);
		ch->rc_position = FUNC1(ch->rc_position);
		ch->rc_target.rs_handle = FUNC1(ch->rc_target.rs_handle);
		ch->rc_target.rs_length = FUNC1(ch->rc_target.rs_length);
		va = (u32 *)&ch->rc_target.rs_offset;
		FUNC3(va, &ch_offset);
		FUNC2(ch_offset, (u64 *)va);
		ch++;
	}
	return (u32 *)&ch->rc_position;
}