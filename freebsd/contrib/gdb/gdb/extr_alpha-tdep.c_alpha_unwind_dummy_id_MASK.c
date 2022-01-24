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
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef  int /*<<< orphan*/  ULONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_SP_REGNUM ; 
 struct frame_id FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct frame_id
FUNC3 (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  ULONGEST base;
  FUNC2 (next_frame, ALPHA_SP_REGNUM, &base);
  return FUNC0 (base, FUNC1 (next_frame));
}