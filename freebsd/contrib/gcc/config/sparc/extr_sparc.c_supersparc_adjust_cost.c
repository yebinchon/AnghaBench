
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 scalar_t__ GET_CODE (int ) ;
 int PATTERN (int ) ;
 scalar_t__ REG_NOTE_KIND (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int TYPE_FPLOAD ;
 int TYPE_FPSTORE ;
 int TYPE_IALU ;
 int TYPE_LOAD ;
 int TYPE_SHIFT ;
 int TYPE_STORE ;
 int get_attr_type (int ) ;
 int recog_memoized (int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

__attribute__((used)) static int
supersparc_adjust_cost (rtx insn, rtx link, rtx dep_insn, int cost)
{
  enum attr_type insn_type;

  if (! recog_memoized (insn))
    return 0;

  insn_type = get_attr_type (insn);

  if (REG_NOTE_KIND (link) == 0)
    {







      if (insn_type == TYPE_LOAD || insn_type == TYPE_FPLOAD)
 return cost + 3;


      if (insn_type == TYPE_STORE || insn_type == TYPE_FPSTORE)
 {
   rtx pat = PATTERN(insn);
   rtx dep_pat = PATTERN (dep_insn);

   if (GET_CODE (pat) != SET || GET_CODE (dep_pat) != SET)
     return cost;




   if (rtx_equal_p (SET_DEST (dep_pat), SET_SRC (pat)))
     return cost;

   return cost + 3;
 }



      if (insn_type == TYPE_SHIFT)
 return cost + 3;
    }
  else
    {







      if (insn_type == TYPE_IALU || insn_type == TYPE_SHIFT)
 return 0;
    }

  return cost;
}
