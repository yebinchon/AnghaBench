
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_unit { ____Placeholder_attr_unit } attr_unit ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;
typedef enum attr_memory { ____Placeholder_attr_memory } attr_memory ;


 int GET_CODE (int ) ;
 int MEM ;
 int MEMORY_BOTH ;
 int MEMORY_LOAD ;
 int MEMORY_STORE ;
 int NULL_RTX ;
 scalar_t__ REG_NOTE_KIND (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int TARGET_ATHLON ;
 int TYPE_FMOV ;
 int TYPE_IMOV ;
 int TYPE_POP ;
 int TYPE_PUSH ;
 int UNIT_INTEGER ;
 int UNIT_UNKNOWN ;
 int get_attr_fp_int_src (int ) ;
 int get_attr_memory (int ) ;
 int get_attr_type (int ) ;
 int get_attr_unit (int ) ;
 int ix86_agi_dependent (int ,int ,int) ;
 int ix86_flags_dependent (int ,int ,int) ;
 int ix86_tune ;
 int recog_memoized (int ) ;
 int rtx_equal_p (int ,int ) ;
 int single_set (int ) ;

__attribute__((used)) static int
ix86_adjust_cost (rtx insn, rtx link, rtx dep_insn, int cost)
{
  enum attr_type insn_type, dep_insn_type;
  enum attr_memory memory;
  rtx set, set2;
  int dep_insn_code_number;


  if (REG_NOTE_KIND (link) != 0)
    return 0;

  dep_insn_code_number = recog_memoized (dep_insn);


  if (dep_insn_code_number < 0 || recog_memoized (insn) < 0)
    return cost;

  insn_type = get_attr_type (insn);
  dep_insn_type = get_attr_type (dep_insn);

  switch (ix86_tune)
    {
    case 129:

      if (ix86_agi_dependent (insn, dep_insn, insn_type))
 cost += 1;


      if (ix86_flags_dependent (insn, dep_insn, insn_type))
 cost = 0;


      if (insn_type == TYPE_FMOV
   && get_attr_memory (insn) == MEMORY_STORE
   && !ix86_agi_dependent (insn, dep_insn, insn_type))
 cost += 1;
      break;

    case 128:
      memory = get_attr_memory (insn);


      if (get_attr_fp_int_src (dep_insn))
 cost += 5;


      if (insn_type == TYPE_FMOV
   && (set = single_set (dep_insn)) != NULL_RTX
   && (set2 = single_set (insn)) != NULL_RTX
   && rtx_equal_p (SET_DEST (set), SET_SRC (set2))
   && GET_CODE (SET_DEST (set2)) == MEM)
 cost += 1;




      if ((memory == MEMORY_LOAD || memory == MEMORY_BOTH)
   && !ix86_agi_dependent (insn, dep_insn, insn_type))
 {


   if (dep_insn_type == TYPE_IMOV
       || dep_insn_type == TYPE_FMOV)
     cost = 1;
   else if (cost > 1)
     cost--;
 }
      break;

    case 131:
      memory = get_attr_memory (insn);



      if ((insn_type == TYPE_PUSH || insn_type == TYPE_POP)
   && (dep_insn_type == TYPE_PUSH || dep_insn_type == TYPE_POP))
 return 1;


      if (get_attr_fp_int_src (dep_insn))
 cost += 5;




      if ((memory == MEMORY_LOAD || memory == MEMORY_BOTH)
   && !ix86_agi_dependent (insn, dep_insn, insn_type))
 {


   if (dep_insn_type == TYPE_IMOV
       || dep_insn_type == TYPE_FMOV)
     cost = 1;
   else if (cost > 2)
     cost -= 2;
   else
     cost = 1;
 }
      break;

    case 134:
    case 130:
    case 135:
    case 133:
    case 132:
      memory = get_attr_memory (insn);




      if ((memory == MEMORY_LOAD || memory == MEMORY_BOTH)
   && !ix86_agi_dependent (insn, dep_insn, insn_type))
 {
   enum attr_unit unit = get_attr_unit (insn);
   int loadcost = 3;






   if (unit == UNIT_INTEGER || unit == UNIT_UNKNOWN)
     loadcost = 3;
   else
     loadcost = TARGET_ATHLON ? 2 : 0;

   if (cost >= loadcost)
     cost -= loadcost;
   else
     cost = 0;
 }

    default:
      break;
    }

  return cost;
}
