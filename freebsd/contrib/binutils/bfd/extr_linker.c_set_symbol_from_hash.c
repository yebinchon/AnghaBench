
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int value; int * section; } ;
struct TYPE_8__ {TYPE_2__ c; TYPE_1__ def; } ;
struct bfd_link_hash_entry {int type; TYPE_3__ u; } ;
struct TYPE_9__ {int flags; int * section; int value; } ;
typedef TYPE_4__ asymbol ;


 int BFD_ASSERT (int) ;
 int BSF_CONSTRUCTOR ;
 int BSF_WEAK ;
 int abort () ;
 int * bfd_abs_section_ptr ;
 void* bfd_com_section_ptr ;
 int bfd_is_com_section (int *) ;
 int bfd_is_und_section (int *) ;
 void* bfd_und_section_ptr ;

__attribute__((used)) static void
set_symbol_from_hash (asymbol *sym, struct bfd_link_hash_entry *h)
{
  switch (h->type)
    {
    default:
      abort ();
      break;
    case 131:


      if (sym->section != ((void*)0))
 {
   BFD_ASSERT ((sym->flags & BSF_CONSTRUCTOR) != 0);
 }
      else
 {
   sym->flags |= BSF_CONSTRUCTOR;
   sym->section = bfd_abs_section_ptr;
   sym->value = 0;
 }
      break;
    case 130:
      sym->section = bfd_und_section_ptr;
      sym->value = 0;
      break;
    case 129:
      sym->section = bfd_und_section_ptr;
      sym->value = 0;
      sym->flags |= BSF_WEAK;
      break;
    case 134:
      sym->section = h->u.def.section;
      sym->value = h->u.def.value;
      break;
    case 133:
      sym->flags |= BSF_WEAK;
      sym->section = h->u.def.section;
      sym->value = h->u.def.value;
      break;
    case 135:
      sym->value = h->u.c.size;
      if (sym->section == ((void*)0))
 sym->section = bfd_com_section_ptr;
      else if (! bfd_is_com_section (sym->section))
 {
   BFD_ASSERT (bfd_is_und_section (sym->section));
   sym->section = bfd_com_section_ptr;
 }

      break;
    case 132:
    case 128:

      break;
    }
}
