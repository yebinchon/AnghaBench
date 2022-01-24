#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_9__ {int sign_extend_vma; } ;
struct TYPE_8__ {int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_value; int /*<<< orphan*/  st_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  est_shndx; } ;
struct TYPE_6__ {void* st_shndx; void* st_other; void* st_info; void* st_size; void* st_value; void* st_name; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;
typedef  TYPE_2__ Elf_External_Sym_Shndx ;
typedef  TYPE_3__ Elf_External_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* SHN_XINDEX ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC6 (bfd *abfd,
		    const void *psrc,
		    const void *pshn,
		    Elf_Internal_Sym *dst)
{
  const Elf_External_Sym *src = psrc;
  const Elf_External_Sym_Shndx *shndx = pshn;
  int signed_vma = FUNC5 (abfd)->sign_extend_vma;

  dst->st_name = FUNC1 (abfd, src->st_name);
  if (signed_vma)
    dst->st_value = FUNC3 (abfd, src->st_value);
  else
    dst->st_value = FUNC4 (abfd, src->st_value);
  dst->st_size = FUNC4 (abfd, src->st_size);
  dst->st_info = FUNC2 (abfd, src->st_info);
  dst->st_other = FUNC2 (abfd, src->st_other);
  dst->st_shndx = FUNC0 (abfd, src->st_shndx);
  if (dst->st_shndx == SHN_XINDEX)
    {
      if (shndx == NULL)
	return FALSE;
      dst->st_shndx = FUNC1 (abfd, shndx->est_shndx);
    }
  return TRUE;
}