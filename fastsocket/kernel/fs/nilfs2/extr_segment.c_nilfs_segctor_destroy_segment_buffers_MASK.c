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
struct nilfs_segment_buffer {int /*<<< orphan*/  sb_list; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_segbufs; } ;

/* Variables and functions */
 struct nilfs_segment_buffer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_segment_buffer*) ; 

__attribute__((used)) static void FUNC4(struct nilfs_sc_info *sci)
{
	struct nilfs_segment_buffer *segbuf;

	while (!FUNC2(&sci->sc_segbufs)) {
		segbuf = FUNC0(&sci->sc_segbufs);
		FUNC1(&segbuf->sb_list);
		FUNC3(segbuf);
	}
	/* sci->sc_curseg = NULL; */
}