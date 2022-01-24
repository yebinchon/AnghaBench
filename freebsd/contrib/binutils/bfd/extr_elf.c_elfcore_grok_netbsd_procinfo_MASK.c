#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  core_command; void* core_pid; void* core_signal; } ;
struct TYPE_5__ {scalar_t__ descdata; } ;
typedef  TYPE_1__ Elf_Internal_Note ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd, Elf_Internal_Note *note)
{
  /* Signal number at offset 0x08. */
  FUNC2 (abfd)->core_signal
    = FUNC1 (abfd, (bfd_byte *) note->descdata + 0x08);

  /* Process ID at offset 0x50. */
  FUNC2 (abfd)->core_pid
    = FUNC1 (abfd, (bfd_byte *) note->descdata + 0x50);

  /* Command name at 0x7c (max 32 bytes, including nul). */
  FUNC2 (abfd)->core_command
    = FUNC0 (abfd, note->descdata + 0x7c, 31);

  return FUNC3 (abfd, ".note.netbsdcore.procinfo",
					  note);
}