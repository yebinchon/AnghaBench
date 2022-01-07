
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int valueT ;
typedef scalar_t__ segT ;
struct TYPE_17__ {int fr_address; } ;
typedef TYPE_1__ fragS ;
struct TYPE_18__ {int fx_offset; int fx_pcrel; int fx_dot_value; int fx_size; int fx_where; int fx_line; int fx_file; scalar_t__ fx_signed; int fx_no_overflow; int fx_bit_fixP; int * fx_subsy; int * fx_addsy; int fx_done; TYPE_1__* fx_frag; struct TYPE_18__* fx_next; } ;
typedef TYPE_2__ fixS ;


 int ATTRIBUTE_UNUSED_LABEL ;
 scalar_t__ MD_APPLY_SYM_VALUE (TYPE_2__*) ;
 scalar_t__ MD_PCREL_FROM_SECTION (TYPE_2__*,scalar_t__) ;
 char* S_GET_NAME (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 int TC_ADJUST_RELOC_COUNT (TYPE_2__*,long) ;
 int TC_FORCE_RELOCATION_ABS (TYPE_2__*) ;
 int TC_FORCE_RELOCATION_LOCAL (TYPE_2__*) ;
 int TC_FORCE_RELOCATION_SUB_ABS (TYPE_2__*) ;
 int TC_FORCE_RELOCATION_SUB_LOCAL (TYPE_2__*) ;
 int TC_FORCE_RELOCATION_SUB_SAME (TYPE_2__*,scalar_t__) ;
 scalar_t__ TC_LINKRELAX_FIXUP (scalar_t__) ;
 int TC_VALIDATE_FIX (TYPE_2__*,scalar_t__,int ) ;
 int TC_VALIDATE_FIX_SUB (TYPE_2__*) ;
 int _ (char*) ;
 int * abs_section_sym ;
 scalar_t__ absolute_section ;
 int as_bad_where (int ,int ,int ,...) ;
 int bfd_is_com_section (scalar_t__) ;
 int flag_signed_overflow_ok ;
 int fprintf (int ,char*) ;
 int know (TYPE_1__*) ;
 scalar_t__ linkrelax ;
 int md_apply_fix (TYPE_2__*,int*,scalar_t__) ;
 int print_fixup (TYPE_2__*) ;
 int resolve_symbol_value (int *) ;
 int * section_symbol (scalar_t__) ;
 int segment_name (scalar_t__) ;
 int skip ;
 int sprint_value (char*,int) ;
 int sprintf (char*,char*,long) ;
 int stderr ;
 int symbol_mark_used_in_reloc (int *) ;
 scalar_t__ undefined_section ;

__attribute__((used)) static long
fixup_segment (fixS *fixP, segT this_segment)
{
  long seg_reloc_count = 0;
  valueT add_number;
  fragS *fragP;
  segT add_symbol_segment = absolute_section;

  if (fixP != ((void*)0) && abs_section_sym == ((void*)0))
    abs_section_sym = section_symbol (absolute_section);







  if (linkrelax && TC_LINKRELAX_FIXUP (this_segment))
    {
      for (; fixP; fixP = fixP->fx_next)
 if (!fixP->fx_done)
   {
     if (fixP->fx_addsy == ((void*)0))
       {




  fixP->fx_addsy = abs_section_sym;
       }
     symbol_mark_used_in_reloc (fixP->fx_addsy);
     if (fixP->fx_subsy != ((void*)0))
       symbol_mark_used_in_reloc (fixP->fx_subsy);
     seg_reloc_count++;
   }
      TC_ADJUST_RELOC_COUNT (fixP, seg_reloc_count);
      return seg_reloc_count;
    }

  for (; fixP; fixP = fixP->fx_next)
    {





      fragP = fixP->fx_frag;
      know (fragP);



      add_number = fixP->fx_offset;

      if (fixP->fx_addsy != ((void*)0))
 add_symbol_segment = S_GET_SEGMENT (fixP->fx_addsy);

      if (fixP->fx_subsy != ((void*)0))
 {
   segT sub_symbol_segment;
   resolve_symbol_value (fixP->fx_subsy);
   sub_symbol_segment = S_GET_SEGMENT (fixP->fx_subsy);
   if (fixP->fx_addsy != ((void*)0)
       && sub_symbol_segment == add_symbol_segment
       && !TC_FORCE_RELOCATION_SUB_SAME (fixP, add_symbol_segment))
     {
       add_number += S_GET_VALUE (fixP->fx_addsy);
       add_number -= S_GET_VALUE (fixP->fx_subsy);
       fixP->fx_offset = add_number;
       fixP->fx_addsy = ((void*)0);
       fixP->fx_subsy = ((void*)0);




     }
   else if (sub_symbol_segment == absolute_section
     && !TC_FORCE_RELOCATION_SUB_ABS (fixP))
     {
       add_number -= S_GET_VALUE (fixP->fx_subsy);
       fixP->fx_offset = add_number;
       fixP->fx_subsy = ((void*)0);
     }
   else if (sub_symbol_segment == this_segment
     && !TC_FORCE_RELOCATION_SUB_LOCAL (fixP))
     {
       add_number -= S_GET_VALUE (fixP->fx_subsy);
       fixP->fx_offset = (add_number + fixP->fx_dot_value
     + fixP->fx_frag->fr_address);




       if (0







    || !fixP->fx_pcrel)
  add_number += MD_PCREL_FROM_SECTION (fixP, this_segment);
       fixP->fx_subsy = ((void*)0);
       fixP->fx_pcrel = 1;
     }
   else if (!TC_VALIDATE_FIX_SUB (fixP))
     {
       as_bad_where (fixP->fx_file, fixP->fx_line,
       _("can't resolve `%s' {%s section} - `%s' {%s section}"),
       fixP->fx_addsy ? S_GET_NAME (fixP->fx_addsy) : "0",
       segment_name (add_symbol_segment),
       S_GET_NAME (fixP->fx_subsy),
       segment_name (sub_symbol_segment));
     }
 }

      if (fixP->fx_addsy)
 {
   if (add_symbol_segment == this_segment
       && !TC_FORCE_RELOCATION_LOCAL (fixP))
     {



       add_number += S_GET_VALUE (fixP->fx_addsy);
       fixP->fx_offset = add_number;
       if (fixP->fx_pcrel)
  add_number -= MD_PCREL_FROM_SECTION (fixP, this_segment);
       fixP->fx_addsy = ((void*)0);
       fixP->fx_pcrel = 0;
     }
   else if (add_symbol_segment == absolute_section
     && !TC_FORCE_RELOCATION_ABS (fixP))
     {
       add_number += S_GET_VALUE (fixP->fx_addsy);
       fixP->fx_offset = add_number;
       fixP->fx_addsy = ((void*)0);
     }
   else if (add_symbol_segment != undefined_section
     && ! bfd_is_com_section (add_symbol_segment)
     && MD_APPLY_SYM_VALUE (fixP))
     add_number += S_GET_VALUE (fixP->fx_addsy);
 }

      if (fixP->fx_pcrel)
 {
   add_number -= MD_PCREL_FROM_SECTION (fixP, this_segment);
   if (!fixP->fx_done && fixP->fx_addsy == ((void*)0))
     {




       fixP->fx_addsy = abs_section_sym;
     }
 }

      if (!fixP->fx_done)
 md_apply_fix (fixP, &add_number, this_segment);

      if (!fixP->fx_done)
 {
   ++seg_reloc_count;
   if (fixP->fx_addsy == ((void*)0))
     fixP->fx_addsy = abs_section_sym;
   symbol_mark_used_in_reloc (fixP->fx_addsy);
   if (fixP->fx_subsy != ((void*)0))
     symbol_mark_used_in_reloc (fixP->fx_subsy);
 }

      if (!fixP->fx_bit_fixP && !fixP->fx_no_overflow && fixP->fx_size != 0)
 {
   if (fixP->fx_size < sizeof (valueT))
     {
       valueT mask;

       mask = 0;
       mask--;
       mask <<= fixP->fx_size * 8 - (fixP->fx_signed ? 1 : 0);
       if ((add_number & mask) != 0 && (add_number & mask) != mask)
  {
    char buf[50], buf2[50];
    sprint_value (buf, fragP->fr_address + fixP->fx_where);
    if (add_number > 1000)
      sprint_value (buf2, add_number);
    else
      sprintf (buf2, "%ld", (long) add_number);
    as_bad_where (fixP->fx_file, fixP->fx_line,
    _("value of %s too large for field of %d bytes at %s"),
    buf2, fixP->fx_size, buf);
  }
     }
 }
    }

  TC_ADJUST_RELOC_COUNT (fixP, seg_reloc_count);
  return seg_reloc_count;
}
