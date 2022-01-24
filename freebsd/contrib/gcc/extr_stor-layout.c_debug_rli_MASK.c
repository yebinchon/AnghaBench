#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* record_layout_info ;
struct TYPE_5__ {scalar_t__ (* ms_bitfield_layout_p ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int record_align; int unpacked_align; int offset_align; int remaining_in_alignment; scalar_t__ pending_statics; scalar_t__ packed_maybe_necessary; int /*<<< orphan*/  t; int /*<<< orphan*/  bitpos; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

void
FUNC4 (record_layout_info rli)
{
  FUNC2 (stderr, "type", rli->t, 0);
  FUNC2 (stderr, "\noffset", rli->offset, 0);
  FUNC2 (stderr, " bitpos", rli->bitpos, 0);

  FUNC1 (stderr, "\naligns: rec = %u, unpack = %u, off = %u\n",
	   rli->record_align, rli->unpacked_align,
	   rli->offset_align);

  /* The ms_struct code is the only that uses this.  */
  if (targetm.ms_bitfield_layout_p (rli->t))
    FUNC1 (stderr, "remaining in alignment = %u\n", rli->remaining_in_alignment);

  if (rli->packed_maybe_necessary)
    FUNC1 (stderr, "packed may be necessary\n");

  if (rli->pending_statics)
    {
      FUNC1 (stderr, "pending statics:\n");
      FUNC0 (rli->pending_statics);
    }
}