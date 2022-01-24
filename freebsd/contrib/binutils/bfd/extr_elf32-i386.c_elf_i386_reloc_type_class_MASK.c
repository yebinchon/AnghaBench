#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum elf_reloc_type_class { ____Placeholder_elf_reloc_type_class } elf_reloc_type_class ;
struct TYPE_3__ {int /*<<< orphan*/  r_info; } ;
typedef  TYPE_1__ Elf_Internal_Rela ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  R_386_COPY 130 
#define  R_386_JUMP_SLOT 129 
#define  R_386_RELATIVE 128 
 int reloc_class_copy ; 
 int reloc_class_normal ; 
 int reloc_class_plt ; 
 int reloc_class_relative ; 

__attribute__((used)) static enum elf_reloc_type_class
FUNC1 (const Elf_Internal_Rela *rela)
{
  switch (FUNC0 (rela->r_info))
    {
    case R_386_RELATIVE:
      return reloc_class_relative;
    case R_386_JUMP_SLOT:
      return reloc_class_plt;
    case R_386_COPY:
      return reloc_class_copy;
    default:
      return reloc_class_normal;
    }
}