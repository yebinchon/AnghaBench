
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_8__ {int addend; int ** sym_ptr_ptr; } ;
typedef TYPE_2__ arelent ;
struct TYPE_7__ {int value; int flags; int * section; } ;
struct TYPE_9__ {int other; TYPE_1__ symbol; } ;
typedef TYPE_3__ aout_symbol_type ;


 int BAL ;
 int BAL_MASK ;
 int BFD_ASSERT (int) ;
 int BSF_SECTION_SYM ;
 int CALL ;
 int CALLS ;
 int IS_BALNAME (int) ;
 scalar_t__ IS_CALLNAME (int) ;
 scalar_t__ IS_OTHER (int) ;
 TYPE_3__* aout_symbol (int *) ;
 int bfd_get_32 (int *,int *) ;
 int bfd_put_32 (int *,int,int *) ;
 int bfd_reloc_ok ;
 int get_value (TYPE_2__*,struct bfd_link_info*,int *) ;
 int output_addr (int *) ;

__attribute__((used)) static bfd_reloc_status_type
callj_callback (bfd *abfd,
  struct bfd_link_info *link_info,
  arelent *reloc_entry,
  void * data,
  unsigned int srcidx,
  unsigned int dstidx,
  asection *input_section,
  bfd_boolean shrinking)
{
  int word = bfd_get_32 (abfd, (bfd_byte *) data + srcidx);
  asymbol *symbol_in = *(reloc_entry->sym_ptr_ptr);
  aout_symbol_type *symbol = aout_symbol (symbol_in);
  bfd_vma value;

  value = get_value (reloc_entry, link_info, input_section);

  if (IS_OTHER (symbol->other))


    word = CALLS | (symbol->other - 1);

  else if (IS_CALLNAME (symbol->other))
    {
      aout_symbol_type *balsym = symbol+1;


      BFD_ASSERT (IS_BALNAME (balsym->other));



      word = BAL | ((word
       + output_addr (balsym->symbol.section)
       + balsym->symbol.value + reloc_entry->addend
       - dstidx
       - output_addr (input_section))
      & BAL_MASK);
    }
  else if ((symbol->symbol.flags & BSF_SECTION_SYM) != 0)
    {




      BFD_ASSERT (! shrinking);
      BFD_ASSERT (symbol->symbol.section == input_section);
    }
  else
    word = CALL | (((word & BAL_MASK)
      + value
      + reloc_entry->addend
      - (shrinking ? dstidx : 0)
      - output_addr (input_section))
     & BAL_MASK);

  bfd_put_32 (abfd, (bfd_vma) word, (bfd_byte *) data + dstidx);
  return bfd_reloc_ok;
}
