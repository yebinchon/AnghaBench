
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct bfd_link_info {TYPE_4__* callbacks; } ;
struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_12__ {int section; scalar_t__ value; } ;
struct TYPE_14__ {TYPE_2__ c; TYPE_1__ def; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_3__ u; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_16__ {int section; scalar_t__ value; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_17__ {int owner; } ;
typedef TYPE_6__ asection ;
struct TYPE_18__ {scalar_t__ addend; int address; TYPE_5__** sym_ptr_ptr; } ;
typedef TYPE_7__ arelent ;
struct TYPE_15__ {int (* undefined_symbol ) (struct bfd_link_info*,int ,int ,TYPE_6__*,int ,int ) ;} ;


 int FALSE ;
 int TRUE ;
 int abort () ;
 int bfd_asymbol_name (TYPE_5__*) ;
 scalar_t__ bfd_is_und_section (int ) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 struct bfd_link_hash_entry* bfd_wrapped_link_hash_lookup (int ,struct bfd_link_info*,int ,int ,int ,int ) ;
 scalar_t__ output_addr (int ) ;
 int stub1 (struct bfd_link_info*,int ,int ,TYPE_6__*,int ,int ) ;

__attribute__((used)) static bfd_vma
get_value (arelent *reloc,
    struct bfd_link_info *link_info,
    asection *input_section)
{
  bfd_vma value;
  asymbol *symbol = *(reloc->sym_ptr_ptr);




  if (bfd_is_und_section (symbol->section))
    {
      struct bfd_link_hash_entry *h;






      h = bfd_wrapped_link_hash_lookup (input_section->owner, link_info,
     bfd_asymbol_name (symbol),
     FALSE, FALSE, TRUE);
      if (h != (struct bfd_link_hash_entry *) ((void*)0)
   && (h->type == bfd_link_hash_defined
       || h->type == bfd_link_hash_defweak))
 value = h->u.def.value + output_addr (h->u.def.section);
      else if (h != (struct bfd_link_hash_entry *) ((void*)0)
        && h->type == bfd_link_hash_common)
 value = h->u.c.size;
      else
 {
   if (! ((*link_info->callbacks->undefined_symbol)
   (link_info, bfd_asymbol_name (symbol),
    input_section->owner, input_section, reloc->address,
    TRUE)))
     abort ();
   value = 0;
 }
    }
  else
    value = symbol->value + output_addr (symbol->section);


  value += reloc->addend;

  return value;
}
