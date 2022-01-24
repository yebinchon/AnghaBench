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
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_SECTION_NAME ; 
 int /*<<< orphan*/  DATA_SECTION_NAME ; 
 int /*<<< orphan*/  TEXT_SECTION_NAME ; 
 int /*<<< orphan*/  bfd_com_section_ptr ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elf_com_section_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  asection *s;

  /* Add symbols for the known sections to the symbol table.  */
  s = FUNC0 (stdoutput, TEXT_SECTION_NAME);
  FUNC2 (FUNC1 (s));
  s = FUNC0 (stdoutput, DATA_SECTION_NAME);
  FUNC2 (FUNC1 (s));
  s = FUNC0 (stdoutput, BSS_SECTION_NAME);
  FUNC2 (FUNC1 (s));
  elf_com_section_ptr = bfd_com_section_ptr;
}