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
typedef  int /*<<< orphan*/  ULONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int,char*) ; 

void
FUNC3 (struct frame_info *frame, int regnum,
				ULONGEST *val)
{
  char buf[MAX_REGISTER_SIZE];
  FUNC2 (frame, regnum, buf);
  (*val) = FUNC1 (buf, FUNC0 (regnum));
}