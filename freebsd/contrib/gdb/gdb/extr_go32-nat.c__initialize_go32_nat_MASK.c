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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  go32_info_dos_command ; 
 int /*<<< orphan*/  go32_ops ; 
 int /*<<< orphan*/  go32_pde ; 
 int /*<<< orphan*/  go32_pte ; 
 int /*<<< orphan*/  go32_pte_for_address ; 
 int /*<<< orphan*/  go32_sgdt ; 
 int /*<<< orphan*/  go32_sidt ; 
 int /*<<< orphan*/  go32_sldt ; 
 int /*<<< orphan*/  go32_sysinfo ; 
 int /*<<< orphan*/  info_dos_cmdlist ; 
 int /*<<< orphan*/  infolist ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4 (void)
{
  FUNC3 ();
  FUNC2 (&go32_ops);

  FUNC1 ("dos", class_info, go32_info_dos_command,
		  "Print information specific to DJGPP (aka MS-DOS) debugging.",
		  &info_dos_cmdlist, "info dos ", 0, &infolist);

  FUNC0 ("sysinfo", class_info, go32_sysinfo,
	    "Display information about the target system, including CPU, OS, DPMI, etc.",
	   &info_dos_cmdlist);
  FUNC0 ("ldt", class_info, go32_sldt,
	   "Display entries in the LDT (Local Descriptor Table).\n"
	   "Entry number (an expression) as an argument means display only that entry.",
	   &info_dos_cmdlist);
  FUNC0 ("gdt", class_info, go32_sgdt,
	   "Display entries in the GDT (Global Descriptor Table).\n"
	   "Entry number (an expression) as an argument means display only that entry.",
	   &info_dos_cmdlist);
  FUNC0 ("idt", class_info, go32_sidt,
	   "Display entries in the IDT (Interrupt Descriptor Table).\n"
	   "Entry number (an expression) as an argument means display only that entry.",
	   &info_dos_cmdlist);
  FUNC0 ("pde", class_info, go32_pde,
	   "Display entries in the Page Directory.\n"
	   "Entry number (an expression) as an argument means display only that entry.",
	   &info_dos_cmdlist);
  FUNC0 ("pte", class_info, go32_pte,
	   "Display entries in Page Tables.\n"
	   "Entry number (an expression) as an argument means display only entries\n"
	   "from the Page Table pointed to by the specified Page Directory entry.",
	   &info_dos_cmdlist);
  FUNC0 ("address-pte", class_info, go32_pte_for_address,
	   "Display a Page Table entry for a linear address.\n"
	   "The address argument must be a linear address, after adding to\n"
	   "it the base address of the appropriate segment.\n"
	   "The base address of variables and functions in the debuggee's data\n"
	   "or code segment is stored in the variable __djgpp_base_address,\n"
	   "so use `__djgpp_base_address + (char *)&var' as the argument.\n"
	   "For other segments, look up their base address in the output of\n"
	   "the `info dos ldt' command.",
	   &info_dos_cmdlist);
}