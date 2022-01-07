
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ value; TYPE_5__* section; } ;
struct TYPE_8__ {struct bfd_link_hash_entry* link; } ;
struct TYPE_11__ {TYPE_3__ def; TYPE_1__ i; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_4__ u; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_12__ {int flags; scalar_t__ output_offset; scalar_t__ vma; struct TYPE_12__* next; TYPE_2__* owner; struct TYPE_12__* output_section; struct TYPE_12__* prev; } ;
typedef TYPE_5__ asection ;
struct TYPE_9__ {TYPE_5__* sections; } ;


 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_EXCLUDE ;
 int SEC_READONLY ;
 int SEC_THREAD_LOCAL ;
 int TRUE ;
 TYPE_5__* bfd_abs_section_ptr ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_warning ;
 scalar_t__ bfd_section_removed_from_list (int *,TYPE_5__*) ;

__attribute__((used)) static bfd_boolean
fix_syms (struct bfd_link_hash_entry *h, void *data)
{
  bfd *obfd = (bfd *) data;

  if (h->type == bfd_link_hash_warning)
    h = h->u.i.link;

  if (h->type == bfd_link_hash_defined
      || h->type == bfd_link_hash_defweak)
    {
      asection *s = h->u.def.section;
      if (s != ((void*)0)
   && s->output_section != ((void*)0)
   && (s->output_section->flags & SEC_EXCLUDE) != 0
   && bfd_section_removed_from_list (obfd, s->output_section))
 {
   asection *op, *op1;

   h->u.def.value += s->output_offset + s->output_section->vma;


   for (op1 = s->output_section->prev; op1 != ((void*)0); op1 = op1->prev)
     if ((op1->flags & SEC_EXCLUDE) == 0
  && !bfd_section_removed_from_list (obfd, op1))
       break;



   if (s->output_section->prev != ((void*)0))
     op = s->output_section->prev->next;
   else
     op = s->output_section->owner->sections;
   for (; op != ((void*)0); op = op->next)
     if ((op->flags & SEC_EXCLUDE) == 0
  && !bfd_section_removed_from_list (obfd, op))
       break;




   if (op1 == ((void*)0))
     {
       if (op == ((void*)0))
  op = bfd_abs_section_ptr;
     }
   else if (op == ((void*)0))
     op = op1;
   else if (((op1->flags ^ op->flags)
      & (SEC_ALLOC | SEC_THREAD_LOCAL)) != 0)
     {
       if (((op->flags ^ s->flags)
     & (SEC_ALLOC | SEC_THREAD_LOCAL)) != 0)
  op = op1;
     }
   else if (((op1->flags ^ op->flags) & SEC_READONLY) != 0)
     {
       if (((op->flags ^ s->flags) & SEC_READONLY) != 0)
  op = op1;
     }
   else if (((op1->flags ^ op->flags) & SEC_CODE) != 0)
     {
       if (((op->flags ^ s->flags) & SEC_CODE) != 0)
  op = op1;
     }
   else
     {


       if (h->u.def.value < op->vma)
  op = op1;
     }

   h->u.def.value -= op->vma;
   h->u.def.section = op;
 }
    }

  return TRUE;
}
