#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {int st_value; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STT_ARM_TFUNC ; 
 scalar_t__ STT_FUNC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,void const*,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd * abfd,
			  const void *psrc,
			  const void *pshn,
			  Elf_Internal_Sym *dst)
{
  if (!FUNC3 (abfd, psrc, pshn, dst))
    return FALSE;

  /* New EABI objects mark thumb function symbols by setting the low bit of
     the address.  Turn these into STT_ARM_TFUNC.  */
  if (FUNC2 (dst->st_info) == STT_FUNC
      && (dst->st_value & 1))
    {
      dst->st_info = FUNC1 (FUNC0 (dst->st_info), STT_ARM_TFUNC);
      dst->st_value &= ~(bfd_vma) 1;
    }
  return TRUE;
}