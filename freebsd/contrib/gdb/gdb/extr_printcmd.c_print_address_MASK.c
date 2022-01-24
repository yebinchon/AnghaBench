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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  asm_demangle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ui_file*,int /*<<< orphan*/ ,char*) ; 

void
FUNC2 (CORE_ADDR addr, struct ui_file *stream)
{
  FUNC0 (addr, 1, stream);
  FUNC1 (addr, stream, asm_demangle, " ");
}