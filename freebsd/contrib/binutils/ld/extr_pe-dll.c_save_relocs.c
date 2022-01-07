
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reloc_count; int flags; scalar_t__* orelocation; scalar_t__ relocation; } ;
typedef TYPE_1__ asection ;
typedef int arelent ;


 int SEC_RELOC ;
 int relcount ;
 int relsize ;
 scalar_t__ reltab ;
 scalar_t__* xmalloc (int) ;

__attribute__((used)) static void
save_relocs (asection *sec)
{
  int i;

  sec->relocation = reltab;
  sec->reloc_count = relcount;
  sec->orelocation = xmalloc ((relcount + 1) * sizeof (arelent *));
  for (i = 0; i < relcount; i++)
    sec->orelocation[i] = sec->relocation + i;
  sec->orelocation[relcount] = 0;
  sec->flags |= SEC_RELOC;
  reltab = 0;
  relcount = relsize = 0;
}
