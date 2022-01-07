
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mips_hi_fixup {TYPE_2__* fixp; int seg; struct mips_hi_fixup* next; } ;
struct TYPE_5__ {TYPE_2__* fix_root; } ;
typedef TYPE_1__ segment_info_type ;
struct TYPE_6__ {scalar_t__ fx_r_type; scalar_t__ fx_addsy; scalar_t__ fx_offset; struct TYPE_6__* fx_next; } ;
typedef TYPE_2__ fixS ;
typedef int bfd_boolean ;


 scalar_t__ BFD_RELOC_LO16 ;
 scalar_t__ BFD_RELOC_MIPS16_LO16 ;
 scalar_t__ BFD_RELOC_MIPS_GOT16 ;
 int FALSE ;
 int assert (scalar_t__) ;
 scalar_t__ fixup_has_matching_lo_p (TYPE_2__*) ;
 struct mips_hi_fixup* mips_hi_fixup_list ;
 int pic_need_relax (scalar_t__,int ) ;
 scalar_t__ reloc_needs_lo_p (scalar_t__) ;
 TYPE_1__* seg_info (int ) ;

void
mips_frob_file (void)
{
  struct mips_hi_fixup *l;

  for (l = mips_hi_fixup_list; l != ((void*)0); l = l->next)
    {
      segment_info_type *seginfo;
      bfd_boolean matched_lo_p;
      fixS **hi_pos, **lo_pos, **pos;

      assert (reloc_needs_lo_p (l->fixp->fx_r_type));



      if (l->fixp->fx_r_type == BFD_RELOC_MIPS_GOT16
   && !pic_need_relax (l->fixp->fx_addsy, l->seg))
 continue;


      if (fixup_has_matching_lo_p (l->fixp))
 continue;

      seginfo = seg_info (l->seg);






      hi_pos = ((void*)0);
      lo_pos = ((void*)0);
      matched_lo_p = FALSE;
      for (pos = &seginfo->fix_root; *pos != ((void*)0); pos = &(*pos)->fx_next)
 {
   if (*pos == l->fixp)
     hi_pos = pos;

   if (((*pos)->fx_r_type == BFD_RELOC_LO16
        || (*pos)->fx_r_type == BFD_RELOC_MIPS16_LO16)
       && (*pos)->fx_addsy == l->fixp->fx_addsy
       && (*pos)->fx_offset >= l->fixp->fx_offset
       && (lo_pos == ((void*)0)
    || (*pos)->fx_offset < (*lo_pos)->fx_offset
    || (!matched_lo_p
        && (*pos)->fx_offset == (*lo_pos)->fx_offset)))
     lo_pos = pos;

   matched_lo_p = (reloc_needs_lo_p ((*pos)->fx_r_type)
     && fixup_has_matching_lo_p (*pos));
 }
      if (lo_pos != ((void*)0))
 {
   l->fixp->fx_offset = (*lo_pos)->fx_offset;
   if (l->fixp->fx_next != *lo_pos)
     {
       *hi_pos = l->fixp->fx_next;
       l->fixp->fx_next = *lo_pos;
       *lo_pos = l->fixp;
     }
 }
    }
}
