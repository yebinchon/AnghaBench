#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dwarf_section {char* name; int /*<<< orphan*/ * start; int /*<<< orphan*/  size; int /*<<< orphan*/  address; } ;
typedef  enum dwarf_section_display_enum { ____Placeholder_dwarf_section_display_enum } dwarf_section_display_enum ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {scalar_t__ relocate; struct dwarf_section section; } ;
struct TYPE_5__ {int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_addr; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* debug_displays ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 

int
FUNC5 (enum dwarf_section_display_enum debug, void *file)
{
  struct dwarf_section *section = &debug_displays [debug].section;
  Elf_Internal_Shdr *sec;
  char buf [64];

  /* If it is already loaded, do nothing.  */
  if (section->start != NULL)
    return 1;

  /* Locate the debug section.  */
  sec = FUNC2 (section->name);
  if (sec == NULL)
    return 0;

  FUNC4 (buf, sizeof (buf), FUNC0("%s section data"), section->name);
  section->address = sec->sh_addr;
  section->size = sec->sh_size;
  section->start = FUNC3 (NULL, file, sec->sh_offset, 1,
			     sec->sh_size, buf);

  if (debug_displays [debug].relocate)
    FUNC1 (file, sec, section->start);

  return section->start != NULL;
}