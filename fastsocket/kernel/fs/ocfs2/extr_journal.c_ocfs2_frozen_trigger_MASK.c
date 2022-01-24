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
struct ocfs2_triggers {int ot_offset; } ;
struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,void*) ; 
 struct ocfs2_triggers* FUNC1 (struct jbd2_buffer_trigger_type*) ; 

__attribute__((used)) static void FUNC2(struct jbd2_buffer_trigger_type *triggers,
				 struct buffer_head *bh,
				 void *data, size_t size)
{
	struct ocfs2_triggers *ot = FUNC1(triggers);

	/*
	 * We aren't guaranteed to have the superblock here, so we
	 * must unconditionally compute the ecc data.
	 * __ocfs2_journal_access() will only set the triggers if
	 * metaecc is enabled.
	 */
	FUNC0(data, size, data + ot->ot_offset);
}