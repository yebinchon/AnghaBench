#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nilfs_segsum_pointer {unsigned int offset; TYPE_2__* bh; } ;
struct nilfs_segment_buffer {int /*<<< orphan*/  sb_segsum_buffers; } ;
struct nilfs_sc_info {TYPE_1__* sc_super; struct nilfs_segment_buffer* sc_curseg; } ;
struct TYPE_6__ {void* b_data; } ;
struct TYPE_5__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void *FUNC4(struct nilfs_sc_info *sci,
					    struct nilfs_segsum_pointer *ssp,
					    unsigned bytes)
{
	struct nilfs_segment_buffer *segbuf = sci->sc_curseg;
	unsigned blocksize = sci->sc_super->s_blocksize;
	void *p;

	if (FUNC3(ssp->offset + bytes > blocksize)) {
		ssp->offset = 0;
		FUNC0(FUNC1(ssp->bh,
					       &segbuf->sb_segsum_buffers));
		ssp->bh = FUNC2(ssp->bh);
	}
	p = ssp->bh->b_data + ssp->offset;
	ssp->offset += bytes;
	return p;
}