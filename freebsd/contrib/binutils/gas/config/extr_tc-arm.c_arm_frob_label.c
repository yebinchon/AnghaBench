
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int ARM_SET_INTERWORK (int *,int ) ;
 int ARM_SET_THUMB (int *,int ) ;
 scalar_t__ FALSE ;
 int SEC_CODE ;
 char* S_GET_NAME (int *) ;
 int THUMB_SET_FUNC (int *,int) ;
 int bfd_get_section_flags (int ,int ) ;
 int dwarf2_emit_label (int *) ;
 scalar_t__ label_is_thumb_function_name ;
 int * last_label_seen ;
 int now_seg ;
 int stdoutput ;
 int support_interwork ;
 int thumb_mode ;

void
arm_frob_label (symbolS * sym)
{
  last_label_seen = sym;

  ARM_SET_THUMB (sym, thumb_mode);
  if (label_is_thumb_function_name
      && (S_GET_NAME (sym)[0] != '.' || S_GET_NAME (sym)[1] != 'L')
      && (bfd_get_section_flags (stdoutput, now_seg) & SEC_CODE) != 0)
    {





      THUMB_SET_FUNC (sym, 1);

      label_is_thumb_function_name = FALSE;
    }

  dwarf2_emit_label (sym);
}
