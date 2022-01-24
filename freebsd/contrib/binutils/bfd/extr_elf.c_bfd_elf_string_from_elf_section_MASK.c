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
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {unsigned int e_shstrndx; } ;
struct TYPE_4__ {unsigned int sh_size; unsigned int sh_name; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned long,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned long,char*) ; 

char *
FUNC7 (bfd *abfd,
				 unsigned int shindex,
				 unsigned int strindex)
{
  Elf_Internal_Shdr *hdr;

  if (strindex == 0)
    return "";

  if (FUNC4 (abfd) == NULL || shindex >= FUNC5 (abfd))
    return NULL;

  hdr = FUNC4 (abfd)[shindex];

  if (hdr->contents == NULL
      && FUNC2 (abfd, shindex) == NULL)
    return NULL;

  if (strindex >= hdr->sh_size)
    {
      unsigned int shstrndx = FUNC3(abfd)->e_shstrndx;
      FUNC1)
	(FUNC0("%B: invalid string offset %u >= %lu for section `%s'"),
	 abfd, strindex, (unsigned long) hdr->sh_size,
	 (shindex == shstrndx && strindex == hdr->sh_name
	  ? ".shstrtab"
	  : FUNC7 (abfd, shstrndx, hdr->sh_name)));
      return "";
    }

  return ((char *) hdr->contents) + strindex;
}