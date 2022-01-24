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
struct ui_file {int dummy; } ;
struct frame_id {int /*<<< orphan*/  special_addr; int /*<<< orphan*/  code_addr; int /*<<< orphan*/  stack_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (struct ui_file *file, struct frame_id id)
{
  FUNC0 (file, "{stack=0x%s,code=0x%s,special=0x%s}",
		      FUNC1 (id.stack_addr),
		      FUNC1 (id.code_addr),
		      FUNC1 (id.special_addr));
}