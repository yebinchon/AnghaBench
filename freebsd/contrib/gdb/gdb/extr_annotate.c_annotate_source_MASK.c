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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int annotation_level ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2 (char *filename, int line, int character, int mid, CORE_ADDR pc)
{
  if (annotation_level > 1)
    FUNC1 ("\n\032\032source ");
  else
    FUNC1 ("\032\032");

  FUNC1 ("%s:%d:%d:%s:0x", filename,
		   line, character,
		   mid ? "middle" : "beg");
  FUNC0 (pc, 0, gdb_stdout);
  FUNC1 ("\n");
}