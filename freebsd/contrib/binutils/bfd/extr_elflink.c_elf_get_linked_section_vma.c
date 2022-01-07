
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct elf_backend_data {int (* link_order_error_handler ) (int ,int ,TYPE_4__*) ;} ;
struct TYPE_11__ {TYPE_4__* section; } ;
struct TYPE_9__ {TYPE_3__ indirect; } ;
struct bfd_link_order {TYPE_1__ u; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_12__ {scalar_t__ output_offset; TYPE_2__* output_section; int owner; } ;
typedef TYPE_4__ asection ;
struct TYPE_13__ {int sh_link; TYPE_4__* bfd_section; } ;
struct TYPE_10__ {scalar_t__ vma; } ;
typedef TYPE_5__ Elf_Internal_Shdr ;


 int _ (char*) ;
 int _bfd_elf_section_from_bfd_section (int ,TYPE_4__*) ;
 TYPE_5__** elf_elfsections (int ) ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 int stub1 (int ,int ,TYPE_4__*) ;

__attribute__((used)) static bfd_vma
elf_get_linked_section_vma (struct bfd_link_order *p)
{
  Elf_Internal_Shdr **elf_shdrp;
  asection *s;
  int elfsec;

  s = p->u.indirect.section;
  elf_shdrp = elf_elfsections (s->owner);
  elfsec = _bfd_elf_section_from_bfd_section (s->owner, s);
  elfsec = elf_shdrp[elfsec]->sh_link;





  if (elfsec == 0)
    {
      const struct elf_backend_data *bed
 = get_elf_backend_data (s->owner);
      if (bed->link_order_error_handler)
 bed->link_order_error_handler
   (_("%B: warning: sh_link not set for section `%A'"), s->owner, s);
      return 0;
    }
  else
    {
      s = elf_shdrp[elfsec]->bfd_section;
      return s->output_section->vma + s->output_offset;
    }
}
