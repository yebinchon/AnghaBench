#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  reloc_howto_type ;
typedef  int bfd_reloc_code_real_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
#define  BFD_RELOC_MIPS_COPY 129 
#define  BFD_RELOC_MIPS_JUMP_SLOT 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mips_vxworks_copy_howto_rela ; 
 int /*<<< orphan*/  mips_vxworks_jump_slot_howto_rela ; 

__attribute__((used)) static reloc_howto_type *
FUNC1 (bfd *abfd, bfd_reloc_code_real_type code)
{
  switch (code)
    {
    case BFD_RELOC_MIPS_COPY:
      return &mips_vxworks_copy_howto_rela;
    case BFD_RELOC_MIPS_JUMP_SLOT:
      return &mips_vxworks_jump_slot_howto_rela;
    default:
      return FUNC0 (abfd, code);
    }
}