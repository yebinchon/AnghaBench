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
struct nilfs_segment_buffer {int /*<<< orphan*/  sb_payload_buffers; int /*<<< orphan*/  sb_segsum_buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct nilfs_segment_buffer *segbuf)
{
	FUNC0(&segbuf->sb_segsum_buffers);
	FUNC0(&segbuf->sb_payload_buffers);
}