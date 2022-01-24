#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {char* core_command; void* core_program; } ;
struct TYPE_4__ {int descsz; int /*<<< orphan*/  descdata; } ;
typedef  TYPE_1__ Elf_Internal_Note ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, Elf_Internal_Note *note)
{
  switch (note->descsz)
    {
      default:
	return FALSE;

      case 136:		/* Linux/MIPS - N64 kernel elf_prpsinfo */
	FUNC1 (abfd)->core_program
	 = FUNC0 (abfd, note->descdata + 40, 16);
	FUNC1 (abfd)->core_command
	 = FUNC0 (abfd, note->descdata + 56, 80);
    }

  /* Note that for some reason, a spurious space is tacked
     onto the end of the args in some (at least one anyway)
     implementations, so strip it off if it exists.  */

  {
    char *command = FUNC1 (abfd)->core_command;
    int n = FUNC2 (command);

    if (0 < n && command[n - 1] == ' ')
      command[n - 1] = '\0';
  }

  return TRUE;
}