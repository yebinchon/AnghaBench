
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_6__ {struct TYPE_6__* next; int relent; } ;
typedef TYPE_2__ arelent_chain ;
typedef int arelent ;
struct TYPE_5__ {int flags; unsigned int reloc_count; int * relocation; TYPE_2__* constructor_chain; } ;


 int SEC_CONSTRUCTOR ;
 int b_out_slurp_reloc_table (int *,TYPE_1__*,int **) ;

__attribute__((used)) static long
b_out_canonicalize_reloc (bfd *abfd,
     sec_ptr section,
     arelent **relptr,
     asymbol **symbols)
{
  arelent *tblptr;
  unsigned int count;

  if ((section->flags & SEC_CONSTRUCTOR) != 0)
    {
      arelent_chain *chain = section->constructor_chain;

      for (count = 0; count < section->reloc_count; count++)
 {
   *relptr++ = &chain->relent;
   chain = chain->next;
 }
    }
  else
    {
      if (section->relocation == ((void*)0)
   && ! b_out_slurp_reloc_table (abfd, section, symbols))
 return -1;

      tblptr = section->relocation;
      for (count = 0; count++ < section->reloc_count;)
 *relptr++ = tblptr++;
    }

  *relptr = ((void*)0);

  return section->reloc_count;
}
