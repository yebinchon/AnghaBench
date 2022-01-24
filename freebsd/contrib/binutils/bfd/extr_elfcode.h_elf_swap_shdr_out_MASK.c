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
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_addralign; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_addr; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_addralign; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_addr; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;
typedef  TYPE_2__ Elf_External_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (bfd *abfd,
		   const Elf_Internal_Shdr *src,
		   Elf_External_Shdr *dst)
{
  /* note that all elements of dst are *arrays of unsigned char* already...  */
  FUNC0 (abfd, src->sh_name, dst->sh_name);
  FUNC0 (abfd, src->sh_type, dst->sh_type);
  FUNC1 (abfd, src->sh_flags, dst->sh_flags);
  FUNC1 (abfd, src->sh_addr, dst->sh_addr);
  FUNC1 (abfd, src->sh_offset, dst->sh_offset);
  FUNC1 (abfd, src->sh_size, dst->sh_size);
  FUNC0 (abfd, src->sh_link, dst->sh_link);
  FUNC0 (abfd, src->sh_info, dst->sh_info);
  FUNC1 (abfd, src->sh_addralign, dst->sh_addralign);
  FUNC1 (abfd, src->sh_entsize, dst->sh_entsize);
}