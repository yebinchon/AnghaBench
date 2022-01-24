#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int /*<<< orphan*/  core_pid; int /*<<< orphan*/  core_signal; } ;
struct TYPE_4__ {int descsz; scalar_t__ descpos; scalar_t__ descdata; } ;
typedef  TYPE_1__ Elf_Internal_Note ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd, Elf_Internal_Note *note)
{
  size_t offset, size;

  if (note->descsz != 504)
    return FALSE;

  /* pr_cursig */
  FUNC3 (abfd)->core_signal = FUNC1 (abfd, note->descdata + 12);

  /* pr_pid */
  FUNC3 (abfd)->core_pid = FUNC2 (abfd, note->descdata + 32);

  /* pr_reg */
  offset = 112;
  size = 384;

  /* Make a ".reg/999" section.  */
  return FUNC0 (abfd, ".reg",
					  size, note->descpos + offset);
}