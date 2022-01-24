#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  next_file_pos; } ;
struct TYPE_5__ {scalar_t__ sh_type; int sh_offset; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (bfd *abfd)
{
  file_ptr off;
  unsigned int i, num_sec;
  Elf_Internal_Shdr **shdrpp;

  off = FUNC3 (abfd)->next_file_pos;

  num_sec = FUNC2 (abfd);
  for (i = 1, shdrpp = FUNC1 (abfd) + 1; i < num_sec; i++, shdrpp++)
    {
      Elf_Internal_Shdr *shdrp;

      shdrp = *shdrpp;
      if ((shdrp->sh_type == SHT_REL || shdrp->sh_type == SHT_RELA)
	  && shdrp->sh_offset == -1)
	off = FUNC0 (shdrp, off, TRUE);
    }

  FUNC3 (abfd)->next_file_pos = off;
}