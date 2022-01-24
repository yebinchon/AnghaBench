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
struct gfs2_glock {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int READA ; 
 int REQ_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 struct buffer_head* FUNC3 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC7(struct gfs2_glock *gl,
			     const struct buffer_head *bh, const __be64 *pos)
{
	struct buffer_head *rabh;
	const __be64 *endp = (const __be64 *)(bh->b_data + bh->b_size);
	const __be64 *t;

	for (t = pos; t < endp; t++) {
		if (!*t)
			continue;

		rabh = FUNC3(gl, FUNC0(*t), CREATE);
		if (FUNC5(rabh)) {
			if (!FUNC2(rabh)) {
				rabh->b_end_io = end_buffer_read_sync;
				FUNC4(READA | REQ_META, rabh);
				continue;
			}
			FUNC6(rabh);
		}
		FUNC1(rabh);
	}
}