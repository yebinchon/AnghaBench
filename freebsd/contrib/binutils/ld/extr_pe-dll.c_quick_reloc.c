
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
typedef int arelent ;
struct TYPE_5__ {int address; scalar_t__ sym_ptr_ptr; int howto; scalar_t__ addend; } ;


 int bfd_reloc_type_lookup (int *,int) ;
 int relcount ;
 int relsize ;
 TYPE_1__* reltab ;
 scalar_t__ symtab ;
 TYPE_1__* xmalloc (int) ;
 TYPE_1__* xrealloc (TYPE_1__*,int) ;

__attribute__((used)) static void
quick_reloc (bfd *abfd, int address, int which_howto, int symidx)
{
  if (relcount >= relsize - 1)
    {
      relsize += 10;
      if (reltab)
 reltab = xrealloc (reltab, relsize * sizeof (arelent));
      else
 reltab = xmalloc (relsize * sizeof (arelent));
    }
  reltab[relcount].address = address;
  reltab[relcount].addend = 0;
  reltab[relcount].howto = bfd_reloc_type_lookup (abfd, which_howto);
  reltab[relcount].sym_ptr_ptr = symtab + symidx;
  relcount++;
}
