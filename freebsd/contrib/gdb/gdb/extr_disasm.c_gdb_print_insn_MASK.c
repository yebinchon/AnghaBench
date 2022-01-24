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
struct disassemble_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct disassemble_info*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct disassemble_info FUNC1 (int /*<<< orphan*/ ,struct ui_file*) ; 

int
FUNC2 (CORE_ADDR memaddr, struct ui_file *stream)
{
  struct disassemble_info di = FUNC1 (current_gdbarch, stream);
  return FUNC0 (memaddr, &di);
}