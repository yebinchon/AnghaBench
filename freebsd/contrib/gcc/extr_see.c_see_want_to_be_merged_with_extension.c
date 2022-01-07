
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_mentioned_reg_data {int mentioned; int reg; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum extension_type { ____Placeholder_extension_type } extension_type ;


 int DEF_EXTENSION ;
 scalar_t__ GET_CODE (int ) ;
 int PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int USE_EXTENSION ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int note_uses (int *,int ,struct see_mentioned_reg_data*) ;
 scalar_t__ reg_mentioned_p (int ,int ) ;
 int see_get_extension_reg (int ,int) ;
 int see_mentioned_reg ;

__attribute__((used)) static bool
see_want_to_be_merged_with_extension (rtx ref, rtx extension,
             enum extension_type type)
{
  rtx pat;
  rtx dest_extension_reg = see_get_extension_reg (extension, 1);
  rtx source_extension_reg = see_get_extension_reg (extension, 0);
  enum rtx_code code;
  struct see_mentioned_reg_data d;
  int i;

  pat = PATTERN (ref);
  code = GET_CODE (pat);

  if (code == PARALLEL)
    {
      for (i = 0; i < XVECLEN (pat, 0); i++)
 {
   rtx sub = XVECEXP (pat, 0, i);

   if (GET_CODE (sub) == SET
       && (REG_P (SET_DEST (sub))
    || (GET_CODE (SET_DEST (sub)) == SUBREG
        && REG_P (SUBREG_REG (SET_DEST (sub)))))
       && (REG_P (SET_SRC (sub))
    || (GET_CODE (SET_SRC (sub)) == SUBREG
        && REG_P (SUBREG_REG (SET_SRC (sub))))))
     {

       if (type == DEF_EXTENSION
    && reg_mentioned_p (source_extension_reg, SET_DEST (sub)))
  return 0;
     }
   else
     {


       if (type == USE_EXTENSION)
  {
      d.reg = dest_extension_reg;
    d.mentioned = 0;
    note_uses (&sub, see_mentioned_reg, &d);
    if (d.mentioned)
      return 1;
  }
     }
 }
      if (type == USE_EXTENSION)
 return 0;
    }
  else
    {
      if (code == SET
   && (REG_P (SET_DEST (pat))
       || (GET_CODE (SET_DEST (pat)) == SUBREG
    && REG_P (SUBREG_REG (SET_DEST (pat)))))
   && (REG_P (SET_SRC (pat))
       || (GET_CODE (SET_SRC (pat)) == SUBREG
    && REG_P (SUBREG_REG (SET_SRC (pat))))))

 return 0;
     }

  return 1;
}
