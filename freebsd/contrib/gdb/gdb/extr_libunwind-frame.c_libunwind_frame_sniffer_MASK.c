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
typedef  int /*<<< orphan*/  unw_cursor_t ;
typedef  int /*<<< orphan*/  unw_addr_space_t ;
typedef  int /*<<< orphan*/  unw_accessors_t ;
struct libunwind_descr {int /*<<< orphan*/ * accessors; } ;
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 int /*<<< orphan*/  __BIG_ENDIAN ; 
 int /*<<< orphan*/  __LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 struct libunwind_descr* FUNC1 (int /*<<< orphan*/ ) ; 
 struct frame_unwind const libunwind_frame_unwind ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct frame_info*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

const struct frame_unwind *
FUNC5 (struct frame_info *next_frame)
{
  unw_cursor_t cursor;
  unw_accessors_t *acc;
  unw_addr_space_t as;
  struct libunwind_descr *descr;
  int i, ret;

  /* To test for libunwind unwind support, initialize a cursor to the current frame and try to back
     up.  We use this same method when setting up the frame cache (see libunwind_frame_cache()).
     If libunwind returns success for this operation, it means that it has found sufficient
     libunwind unwinding information to do so.  */

  descr = FUNC1 (FUNC0 (next_frame));
  acc = descr->accessors;
  as =  FUNC2 (acc,
				 TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
				 ? __BIG_ENDIAN
				 : __LITTLE_ENDIAN);

  ret = FUNC3 (&cursor, as, next_frame);

  if (ret >= 0)
    ret = FUNC4 (&cursor);

  if (ret < 0)
    return NULL;

  return &libunwind_frame_unwind;
}