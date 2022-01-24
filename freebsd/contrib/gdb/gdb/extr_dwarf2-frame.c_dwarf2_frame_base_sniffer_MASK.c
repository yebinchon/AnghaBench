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
struct frame_info {int dummy; } ;
struct frame_base {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct frame_base const dwarf2_frame_base ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 

const struct frame_base *
FUNC2 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC1 (next_frame);
  if (FUNC0 (&pc))
    return &dwarf2_frame_base;

  return NULL;
}