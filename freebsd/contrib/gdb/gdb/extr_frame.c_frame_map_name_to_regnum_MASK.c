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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC2 (struct frame_info *frame, const char *name, int len)
{
  return FUNC1 (FUNC0 (frame), name, len);
}