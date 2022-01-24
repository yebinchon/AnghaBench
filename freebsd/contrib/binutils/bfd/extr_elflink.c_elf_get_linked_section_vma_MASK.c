#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {int /*<<< orphan*/  (* link_order_error_handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ;} ;
struct TYPE_11__ {TYPE_4__* section; } ;
struct TYPE_9__ {TYPE_3__ indirect; } ;
struct bfd_link_order {TYPE_1__ u; } ;
typedef  scalar_t__ bfd_vma ;
struct TYPE_12__ {scalar_t__ output_offset; TYPE_2__* output_section; int /*<<< orphan*/  owner; } ;
typedef  TYPE_4__ asection ;
struct TYPE_13__ {int sh_link; TYPE_4__* bfd_section; } ;
struct TYPE_10__ {scalar_t__ vma; } ;
typedef  TYPE_5__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_5__** FUNC2 (int /*<<< orphan*/ ) ; 
 struct elf_backend_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static bfd_vma
FUNC5 (struct bfd_link_order *p)
{
  Elf_Internal_Shdr **elf_shdrp;
  asection *s;
  int elfsec;

  s = p->u.indirect.section;
  elf_shdrp = FUNC2 (s->owner);
  elfsec = FUNC1 (s->owner, s);
  elfsec = elf_shdrp[elfsec]->sh_link;
  /* PR 290:
     The Intel C compiler generates SHT_IA_64_UNWIND with
     SHF_LINK_ORDER.  But it doesn't set the sh_link or
     sh_info fields.  Hence we could get the situation
     where elfsec is 0.  */
  if (elfsec == 0)
    {
      const struct elf_backend_data *bed
	= FUNC3 (s->owner);
      if (bed->link_order_error_handler)
	bed->link_order_error_handler
	  (FUNC0("%B: warning: sh_link not set for section `%A'"), s->owner, s);
      return 0;
    }
  else
    {
      s = elf_shdrp[elfsec]->bfd_section;
      return s->output_section->vma + s->output_offset;
    }
}