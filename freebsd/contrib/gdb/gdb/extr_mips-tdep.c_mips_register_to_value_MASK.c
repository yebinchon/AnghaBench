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
struct type {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*,int,char*) ; 

__attribute__((used)) static void
FUNC1 (struct frame_info *frame, int regnum,
			struct type *type, void *to)
{
  FUNC0 (frame, regnum + 0, (char *) to + 4);
  FUNC0 (frame, regnum + 1, (char *) to + 0);
}