
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_subseg {struct line_entry** ptail; struct line_entry* head; struct line_subseg* next; } ;
struct line_seg {struct line_seg* next; struct line_subseg* head; } ;
struct line_entry {int dummy; } ;
typedef int * segT ;


 int DWARF2_ADDR_SIZE (int ) ;
 int SEC_DEBUGGING ;
 int SEC_READONLY ;
 struct line_seg* all_segs ;
 int assert (struct line_seg*) ;
 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_set_section_flags (int ,int *,int) ;
 scalar_t__ ffs (int) ;
 int out_debug_abbrev (int *) ;
 int out_debug_aranges (int *,int *) ;
 int out_debug_info (int *,int *,int *,int *) ;
 int out_debug_line (int *) ;
 int out_debug_ranges (int *) ;
 int record_alignment (int *,scalar_t__) ;
 int seg_not_empty_p (int *) ;
 int sizeof_address ;
 int stdoutput ;
 int * subseg_new (char*,int ) ;

void
dwarf2_finish (void)
{
  segT line_seg;
  struct line_seg *s;
  segT info_seg;
  int emit_other_sections = 0;

  info_seg = bfd_get_section_by_name (stdoutput, ".debug_info");
  emit_other_sections = info_seg == ((void*)0) || !seg_not_empty_p (info_seg);

  if (!all_segs && emit_other_sections)


    return;


  sizeof_address = DWARF2_ADDR_SIZE (stdoutput);


  line_seg = subseg_new (".debug_line", 0);
  bfd_set_section_flags (stdoutput, line_seg, SEC_READONLY | SEC_DEBUGGING);


  for (s = all_segs; s; s = s->next)
    {
      struct line_subseg *ss = s->head;
      struct line_entry **ptail = ss->ptail;

      while ((ss = ss->next) != ((void*)0))
 {
   *ptail = ss->head;
   ptail = ss->ptail;
 }
    }

  out_debug_line (line_seg);




  if (emit_other_sections)
    {
      segT abbrev_seg;
      segT aranges_seg;
      segT ranges_seg;

      assert (all_segs);

      info_seg = subseg_new (".debug_info", 0);
      abbrev_seg = subseg_new (".debug_abbrev", 0);
      aranges_seg = subseg_new (".debug_aranges", 0);

      bfd_set_section_flags (stdoutput, info_seg,
        SEC_READONLY | SEC_DEBUGGING);
      bfd_set_section_flags (stdoutput, abbrev_seg,
        SEC_READONLY | SEC_DEBUGGING);
      bfd_set_section_flags (stdoutput, aranges_seg,
        SEC_READONLY | SEC_DEBUGGING);

      record_alignment (aranges_seg, ffs (2 * sizeof_address) - 1);

      if (all_segs->next == ((void*)0))
 ranges_seg = ((void*)0);
      else
 {
   ranges_seg = subseg_new (".debug_ranges", 0);
   bfd_set_section_flags (stdoutput, ranges_seg,
     SEC_READONLY | SEC_DEBUGGING);
   record_alignment (ranges_seg, ffs (2 * sizeof_address) - 1);
   out_debug_ranges (ranges_seg);
 }

      out_debug_aranges (aranges_seg, info_seg);
      out_debug_abbrev (abbrev_seg);
      out_debug_info (info_seg, abbrev_seg, line_seg, ranges_seg);
    }
}
