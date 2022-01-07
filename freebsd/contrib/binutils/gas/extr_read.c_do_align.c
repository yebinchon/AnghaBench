
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ATTRIBUTE_UNUSED_LABEL ;


 scalar_t__ OCTETS_PER_BYTE_POWER ;
 int _ (char*) ;
 scalar_t__ absolute_section ;
 int as_warn (int ) ;
 int frag_align (int,char,int) ;
 int frag_align_code (int,int) ;
 int frag_align_pattern (int,char*,int,int) ;
 int just_record_alignment ;
 int md_do_align (int,char*,int,int,int ) ;
 int md_flush_pending_output () ;
 int need_pass_2 ;
 scalar_t__ now_seg ;
 scalar_t__ subseg_text_p (scalar_t__) ;

__attribute__((used)) static void
do_align (int n, char *fill, int len, int max)
{
  if (now_seg == absolute_section)
    {
      if (fill != ((void*)0))
 while (len-- > 0)
   if (*fill++ != '\0')
     {
       as_warn (_("ignoring fill value in absolute section"));
       break;
     }
      fill = ((void*)0);
      len = 0;
    }
  if (n != 0 && !need_pass_2)
    {
      if (fill == ((void*)0))
 {
   if (subseg_text_p (now_seg))
     frag_align_code (n, max);
   else
     frag_align (n, 0, max);
 }
      else if (len <= 1)
 frag_align (n, *fill, max);
      else
 frag_align_pattern (n, fill, len, max);
    }





  record_alignment (now_seg, n - OCTETS_PER_BYTE_POWER);
}
