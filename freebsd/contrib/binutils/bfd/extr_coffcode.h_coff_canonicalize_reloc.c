
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
 int coff_slurp_reloc_table (int *,TYPE_1__*,int **) ;

__attribute__((used)) static long
coff_canonicalize_reloc (bfd * abfd,
    sec_ptr section,
    arelent ** relptr,
    asymbol ** symbols)
{
  arelent *tblptr = section->relocation;
  unsigned int count = 0;

  if (section->flags & SEC_CONSTRUCTOR)
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
      if (! coff_slurp_reloc_table (abfd, section, symbols))
 return -1;

      tblptr = section->relocation;

      for (; count++ < section->reloc_count;)
 *relptr++ = tblptr++;
    }
  *relptr = 0;
  return section->reloc_count;
}
