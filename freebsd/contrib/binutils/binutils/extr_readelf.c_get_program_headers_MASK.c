#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  e_phnum; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Elf_Internal_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ elf_header ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ is_32bit_elf ; 
 int /*<<< orphan*/ * program_headers ; 

__attribute__((used)) static int
FUNC6 (FILE *file)
{
  Elf_Internal_Phdr *phdrs;

  /* Check cache of prior read.  */
  if (program_headers != NULL)
    return 1;

  phdrs = FUNC1 (elf_header.e_phnum, sizeof (Elf_Internal_Phdr));

  if (phdrs == NULL)
    {
      FUNC2 (FUNC0("Out of memory\n"));
      return 0;
    }

  if (is_32bit_elf
      ? FUNC4 (file, phdrs)
      : FUNC5 (file, phdrs))
    {
      program_headers = phdrs;
      return 1;
    }

  FUNC3 (phdrs);
  return 0;
}