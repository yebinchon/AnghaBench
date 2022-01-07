
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* bfd_section; } ;
typedef TYPE_1__ segment_info_type ;
typedef void* segT ;


 int bfd_set_section_userdata (int ,void*,TYPE_1__*) ;
 void* now_seg ;
 int now_subseg ;
 TYPE_1__* seg_info (void*) ;
 int stdoutput ;
 TYPE_1__* xcalloc (int,int) ;

void
subseg_change (register segT seg, register int subseg)
{
  segment_info_type *seginfo = seg_info (seg);
  now_seg = seg;
  now_subseg = subseg;

  if (! seginfo)
    {
      seginfo = xcalloc (1, sizeof (*seginfo));
      seginfo->bfd_section = seg;
      (void) bfd_set_section_userdata (stdoutput, seg, seginfo);
    }
}
