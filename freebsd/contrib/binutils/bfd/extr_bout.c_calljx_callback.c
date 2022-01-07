
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef void bfd_byte ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_8__ {scalar_t__ addend; int ** sym_ptr_ptr; } ;
typedef TYPE_2__ arelent ;
struct TYPE_7__ {int section; scalar_t__ value; } ;
struct TYPE_9__ {TYPE_1__ symbol; int other; } ;
typedef TYPE_3__ aout_symbol_type ;


 int BALX ;
 int BALX_MASK ;
 int BFD_ASSERT (int ) ;
 int IS_BALNAME (int ) ;
 scalar_t__ IS_CALLNAME (int ) ;
 TYPE_3__* aout_symbol (int *) ;
 int bfd_get_32 (int *,void*) ;
 int bfd_put_32 (int *,scalar_t__,void*) ;
 int bfd_reloc_ok ;
 scalar_t__ get_value (TYPE_2__*,struct bfd_link_info*,int *) ;
 scalar_t__ output_addr (int ) ;

__attribute__((used)) static bfd_reloc_status_type
calljx_callback (bfd *abfd,
   struct bfd_link_info *link_info,
   arelent *reloc_entry,
   void * src,
   void * dst,
   asection *input_section)
{
  int word = bfd_get_32 (abfd, src);
  asymbol *symbol_in = *(reloc_entry->sym_ptr_ptr);
  aout_symbol_type *symbol = aout_symbol (symbol_in);
  bfd_vma value;

  value = get_value (reloc_entry, link_info, input_section);

  if (IS_CALLNAME (symbol->other))
    {
      aout_symbol_type *balsym = symbol+1;
      int inst = bfd_get_32 (abfd, (bfd_byte *) src-4);


      BFD_ASSERT (IS_BALNAME (balsym->other));
      inst &= BALX_MASK;
      inst |= BALX;
      bfd_put_32 (abfd, (bfd_vma) inst, (bfd_byte *) dst-4);
      symbol = balsym;
      value = (symbol->symbol.value
        + output_addr (symbol->symbol.section));
    }

  word += value + reloc_entry->addend;

  bfd_put_32 (abfd, (bfd_vma) word, dst);
  return bfd_reloc_ok;
}
