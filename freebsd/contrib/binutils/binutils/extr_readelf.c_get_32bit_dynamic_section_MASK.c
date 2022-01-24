#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  d_val; } ;
struct TYPE_12__ {TYPE_2__ d_un; int /*<<< orphan*/  d_tag; } ;
struct TYPE_9__ {scalar_t__ d_val; } ;
struct TYPE_11__ {TYPE_1__ d_un; scalar_t__ d_tag; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_3__ Elf_Internal_Dyn ;
typedef  TYPE_4__ Elf32_External_Dyn ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DT_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  dynamic_addr ; 
 int dynamic_nent ; 
 TYPE_3__* dynamic_section ; 
 int dynamic_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (FILE *file)
{
  Elf32_External_Dyn *edyn, *ext;
  Elf_Internal_Dyn *entry;

  edyn = FUNC5 (NULL, file, dynamic_addr, 1, dynamic_size,
		   FUNC1("dynamic section"));
  if (!edyn)
    return 0;

/* SGI's ELF has more than one section in the DYNAMIC segment, and we
   might not have the luxury of section headers.  Look for the DT_NULL
   terminator to determine the number of entries.  */
  for (ext = edyn, dynamic_nent = 0;
       (char *) ext < (char *) edyn + dynamic_size;
       ext++)
    {
      dynamic_nent++;
      if (FUNC0 (ext->d_tag) == DT_NULL)
	break;
    }

  dynamic_section = FUNC2 (dynamic_nent, sizeof (*entry));
  if (dynamic_section == NULL)
    {
      FUNC3 (FUNC1("Out of memory\n"));
      FUNC4 (edyn);
      return 0;
    }

  for (ext = edyn, entry = dynamic_section;
       entry < dynamic_section + dynamic_nent;
       ext++, entry++)
    {
      entry->d_tag      = FUNC0 (ext->d_tag);
      entry->d_un.d_val = FUNC0 (ext->d_un.d_val);
    }

  FUNC4 (edyn);

  return 1;
}