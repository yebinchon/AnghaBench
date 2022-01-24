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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  I386_ESP_REGNUM ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC3 (struct frame_info *next_frame)
{
  char buf[4];
  CORE_ADDR sp;

  FUNC1 (next_frame, I386_ESP_REGNUM, buf);
  sp = FUNC0 (buf, 4);

  return FUNC2 (sp + 8, 4);
}