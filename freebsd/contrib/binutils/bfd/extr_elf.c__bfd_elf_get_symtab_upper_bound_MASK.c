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
struct TYPE_8__ {TYPE_2__ symtab_hdr; } ;
struct TYPE_7__ {TYPE_1__* s; } ;
struct TYPE_5__ {long sizeof_sym; } ;
typedef  TYPE_2__ Elf_Internal_Shdr ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 

long
FUNC2 (bfd *abfd)
{
  long symcount;
  long symtab_size;
  Elf_Internal_Shdr *hdr = &FUNC0 (abfd)->symtab_hdr;

  symcount = hdr->sh_size / FUNC1 (abfd)->s->sizeof_sym;
  symtab_size = (symcount + 1) * (sizeof (asymbol *));
  if (symcount > 0)
    symtab_size -= sizeof (asymbol *);

  return symtab_size;
}