
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 int GET_CODE (int ) ;
 int MEM ;
 int PATTERN (int ) ;

 int REG_NOTE_KIND (int ) ;
 int SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;

 int TYPE_COMPARE ;
 int TYPE_FPCMP ;


 int TYPE_IALU ;

 int TYPE_SHIFT ;


 int XEXP (int ,int ) ;
 int get_attr_type (int ) ;
 scalar_t__ recog_memoized (int ) ;
 int rtx_equal_p (int ,int ) ;

__attribute__((used)) static int
hypersparc_adjust_cost (rtx insn, rtx link, rtx dep_insn, int cost)
{
  enum attr_type insn_type, dep_type;
  rtx pat = PATTERN(insn);
  rtx dep_pat = PATTERN (dep_insn);

  if (recog_memoized (insn) < 0 || recog_memoized (dep_insn) < 0)
    return cost;

  insn_type = get_attr_type (insn);
  dep_type = get_attr_type (dep_insn);

  switch (REG_NOTE_KIND (link))
    {
    case 0:



      switch (insn_type)
 {
 case 128:
 case 131:

   if (GET_CODE (pat) != SET || GET_CODE (dep_pat) != SET)
     return cost;

   if (rtx_equal_p (SET_DEST (dep_pat), SET_SRC (pat)))
     return cost;
   return cost + 3;

 case 130:
 case 129:
 case 132:


   if (dep_type == 128 || dep_type == 131)
     {
       if (GET_CODE (pat) != SET || GET_CODE (dep_pat) != SET
    || GET_CODE (SET_DEST (dep_pat)) != MEM
    || GET_CODE (SET_SRC (pat)) != MEM
    || ! rtx_equal_p (XEXP (SET_DEST (dep_pat), 0),
        XEXP (SET_SRC (pat), 0)))
  return cost + 2;

       return cost + 8;
     }
   break;

 case 133:


   if (dep_type == TYPE_COMPARE)
     return 0;


   if (dep_type == TYPE_FPCMP)
     return cost - 1;
   break;
 default:
   break;
 }
 break;

    case 134:

      if (insn_type == TYPE_IALU || insn_type == TYPE_SHIFT)
        return 0;
      break;

    default:
      break;
    }

  return cost;
}
