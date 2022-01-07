
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* bfd_section; } ;
typedef TYPE_1__ segment_info_type ;
typedef TYPE_2__* segT ;
struct TYPE_14__ {struct TYPE_14__* output_section; } ;


 char* bfd_get_section_name (int ,TYPE_2__*) ;
 TYPE_2__* bfd_make_section_anyway (int ,char const*) ;
 TYPE_2__* bfd_make_section_old_way (int ,char const*) ;
 int bfd_set_section_userdata (int ,TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* now_seg ;
 TYPE_1__* seg_info (TYPE_2__*) ;
 int stdoutput ;
 int strcmp (char const*,char const*) ;
 TYPE_1__* xcalloc (int,int) ;

segT
subseg_get (const char *segname, int force_new)
{
  segT secptr;
  segment_info_type *seginfo;
  const char *now_seg_name = (now_seg
         ? bfd_get_section_name (stdoutput, now_seg)
         : 0);

  if (!force_new
      && now_seg_name
      && (now_seg_name == segname
   || !strcmp (now_seg_name, segname)))
    return now_seg;

  if (!force_new)
    secptr = bfd_make_section_old_way (stdoutput, segname);
  else
    secptr = bfd_make_section_anyway (stdoutput, segname);

  seginfo = seg_info (secptr);
  if (! seginfo)
    {
      secptr->output_section = secptr;
      seginfo = xcalloc (1, sizeof (*seginfo));
      seginfo->bfd_section = secptr;
      (void) bfd_set_section_userdata (stdoutput, secptr, seginfo);
    }
  return secptr;
}
