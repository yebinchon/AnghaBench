
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct frchain {int frch_subseg; struct frchain* frch_next; } ;
struct TYPE_13__ {struct frchain* frchainP; } ;
typedef TYPE_1__ segment_info_type ;
struct TYPE_14__ {struct TYPE_14__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_17__ {int * fr_next; scalar_t__ fr_fix; } ;
struct TYPE_16__ {TYPE_2__* sections; } ;
struct TYPE_15__ {unsigned int entsize; int owner; } ;


 int SEC_MERGE ;
 int SUB_SEGMENT_ALIGN (TYPE_3__*,struct frchain*) ;
 int bfd_get_section_flags (int ,TYPE_3__*) ;
 int frag_align (int,int ,int ) ;
 int frag_align_code (int,int ) ;
 TYPE_9__* frag_now ;
 int frag_wane (TYPE_9__*) ;
 int had_errors () ;
 int know (int ) ;
 TYPE_3__* now_seg ;
 TYPE_1__* seg_info (TYPE_2__*) ;
 TYPE_5__* stdoutput ;
 int subseg_set (TYPE_2__*,int ) ;
 scalar_t__ subseg_text_p (TYPE_3__*) ;

void
subsegs_finish (void)
{
  struct frchain *frchainP;
  asection *s;

  for (s = stdoutput->sections; s; s = s->next)
    {
      segment_info_type *seginfo = seg_info (s);
      if (!seginfo)
 continue;

      for (frchainP = seginfo->frchainP;
    frchainP != ((void*)0);
    frchainP = frchainP->frch_next)
 {
   int alignment = 0;

   subseg_set (s, frchainP->frch_subseg);




   if (!had_errors ())
     {
       alignment = SUB_SEGMENT_ALIGN (now_seg, frchainP);
       if ((bfd_get_section_flags (now_seg->owner, now_seg) & SEC_MERGE)
    && now_seg->entsize)
  {
    unsigned int entsize = now_seg->entsize;
    int entalign = 0;

    while ((entsize & 1) == 0)
      {
        ++entalign;
        entsize >>= 1;
      }
    if (entalign > alignment)
      alignment = entalign;
  }
     }

   if (subseg_text_p (now_seg))
     frag_align_code (alignment, 0);
   else
     frag_align (alignment, 0, 0);






   frag_wane (frag_now);
   frag_now->fr_fix = 0;
   know (frag_now->fr_next == ((void*)0));
 }
    }
}
