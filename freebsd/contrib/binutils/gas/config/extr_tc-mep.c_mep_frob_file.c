
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mep_hi_fixup {TYPE_2__* fixp; int seg; struct mep_hi_fixup* next; } ;
struct TYPE_5__ {TYPE_2__* fix_root; } ;
typedef TYPE_1__ segment_info_type ;
struct TYPE_6__ {scalar_t__ fx_addsy; scalar_t__ fx_offset; int fx_line; int fx_file; struct TYPE_6__* fx_next; } ;
typedef TYPE_2__ fixS ;


 scalar_t__ BFD_RELOC_HI16 ;
 scalar_t__ BFD_RELOC_LO16 ;
 scalar_t__ FX_OPINFO_R_TYPE (TYPE_2__*) ;
 int _ (char*) ;
 int as_warn_where (int ,int ,int ) ;
 int assert (int) ;
 struct mep_hi_fixup* mep_hi_fixup_list ;
 TYPE_1__* seg_info (int ) ;

void
mep_frob_file ()
{
  struct mep_hi_fixup * l;

  for (l = mep_hi_fixup_list; l != ((void*)0); l = l->next)
    {
      segment_info_type * seginfo;
      int pass;

      assert (FX_OPINFO_R_TYPE (l->fixp) == BFD_RELOC_HI16
       || FX_OPINFO_R_TYPE (l->fixp) == BFD_RELOC_LO16);


      if (l->fixp->fx_next != ((void*)0)
   && FX_OPINFO_R_TYPE (l->fixp->fx_next) == BFD_RELOC_LO16
   && l->fixp->fx_addsy == l->fixp->fx_next->fx_addsy
   && l->fixp->fx_offset == l->fixp->fx_next->fx_offset)
 continue;






      seginfo = seg_info (l->seg);
      for (pass = 0; pass < 2; pass++)
 {
   fixS * f;
   fixS * prev;

   prev = ((void*)0);
   for (f = seginfo->fix_root; f != ((void*)0); f = f->fx_next)
     {

       if (FX_OPINFO_R_TYPE (f) == BFD_RELOC_LO16
    && f->fx_addsy == l->fixp->fx_addsy
    && f->fx_offset == l->fixp->fx_offset
    && (pass == 1
        || prev == ((void*)0)
        || (FX_OPINFO_R_TYPE (prev) != BFD_RELOC_HI16)
        || prev->fx_addsy != f->fx_addsy
        || prev->fx_offset != f->fx_offset))
  {
    fixS ** pf;


    for (pf = &seginfo->fix_root;
         * pf != l->fixp;
         pf = & (* pf)->fx_next)
      assert (* pf != ((void*)0));

    * pf = l->fixp->fx_next;

    l->fixp->fx_next = f;
    if (prev == ((void*)0))
      seginfo->fix_root = l->fixp;
    else
      prev->fx_next = l->fixp;

    break;
  }

       prev = f;
     }

   if (f != ((void*)0))
     break;

   if (pass == 1)
     as_warn_where (l->fixp->fx_file, l->fixp->fx_line,
      _("Unmatched high relocation"));
 }
    }
}
