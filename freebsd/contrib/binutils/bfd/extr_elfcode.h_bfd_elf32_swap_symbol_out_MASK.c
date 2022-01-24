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
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {void* st_name; int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_value; } ;
struct TYPE_4__ {unsigned int st_name; unsigned int st_shndx; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_value; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;
typedef  TYPE_2__ Elf_External_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int SHN_HIRESERVE ; 
 unsigned int SHN_XINDEX ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5 (bfd *abfd,
		     const Elf_Internal_Sym *src,
		     void *cdst,
		     void *shndx)
{
  unsigned int tmp;
  Elf_External_Sym *dst = cdst;
  FUNC1 (abfd, src->st_name, dst->st_name);
  FUNC3 (abfd, src->st_value, dst->st_value);
  FUNC3 (abfd, src->st_size, dst->st_size);
  FUNC2 (abfd, src->st_info, dst->st_info);
  FUNC2 (abfd, src->st_other, dst->st_other);
  tmp = src->st_shndx;
  if (tmp > SHN_HIRESERVE)
    {
      if (shndx == NULL)
	FUNC4 ();
      FUNC1 (abfd, tmp, shndx);
      tmp = SHN_XINDEX;
    }
  FUNC0 (abfd, tmp, dst->st_shndx);
}