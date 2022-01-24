#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_6__ {long sh_size; } ;
struct TYPE_8__ {TYPE_2__ dynsymtab_hdr; } ;
struct TYPE_7__ {TYPE_1__* s; } ;
struct TYPE_5__ {long sizeof_sym; } ;
typedef  TYPE_2__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 

long
FUNC4 (bfd *abfd)
{
  long symcount;
  long symtab_size;
  Elf_Internal_Shdr *hdr = &FUNC2 (abfd)->dynsymtab_hdr;

  if (FUNC1 (abfd) == 0)
    {
      FUNC0 (bfd_error_invalid_operation);
      return -1;
    }

  symcount = hdr->sh_size / FUNC3 (abfd)->s->sizeof_sym;
  symtab_size = (symcount + 1) * (sizeof (asymbol *));
  if (symcount > 0)
    symtab_size -= sizeof (asymbol *);

  return symtab_size;
}