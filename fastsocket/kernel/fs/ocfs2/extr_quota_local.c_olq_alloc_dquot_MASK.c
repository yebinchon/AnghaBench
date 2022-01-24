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
struct ocfs2_local_disk_chunk {int /*<<< orphan*/  dqc_free; int /*<<< orphan*/  dqc_bitmap; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct buffer_head *bh, void *private)
{
	int *offset = private;
	struct ocfs2_local_disk_chunk *dchunk;

	dchunk = (struct ocfs2_local_disk_chunk *)bh->b_data;
	FUNC1(*offset, dchunk->dqc_bitmap);
	FUNC0(&dchunk->dqc_free, -1);
}