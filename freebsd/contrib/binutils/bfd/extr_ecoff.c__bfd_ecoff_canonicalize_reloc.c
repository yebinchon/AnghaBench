
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
typedef int asymbol ;
struct TYPE_5__ {int flags; unsigned int reloc_count; int * relocation; TYPE_2__* constructor_chain; } ;
typedef TYPE_1__ asection ;
struct TYPE_6__ {int relent; struct TYPE_6__* next; } ;
typedef TYPE_2__ arelent_chain ;
typedef int arelent ;


 int SEC_CONSTRUCTOR ;
 int ecoff_slurp_reloc_table (int *,TYPE_1__*,int **) ;

long
_bfd_ecoff_canonicalize_reloc (bfd *abfd,
          asection *section,
          arelent **relptr,
          asymbol **symbols)
{
  unsigned int count;

  if (section->flags & SEC_CONSTRUCTOR)
    {
      arelent_chain *chain;




      for (count = 0, chain = section->constructor_chain;
    count < section->reloc_count;
    count++, chain = chain->next)
 *relptr++ = &chain->relent;
    }
  else
    {
      arelent *tblptr;

      if (! ecoff_slurp_reloc_table (abfd, section, symbols))
 return -1;

      tblptr = section->relocation;

      for (count = 0; count < section->reloc_count; count++)
 *relptr++ = tblptr++;
    }

  *relptr = ((void*)0);

  return section->reloc_count;
}
