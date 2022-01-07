
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 scalar_t__ JUMP_TABLES_IN_TEXT_SECTION ;
 int PATTERN (int ) ;
 int XVECLEN (int ,int) ;
 scalar_t__ readonly_data_section ;
 scalar_t__ text_section ;

__attribute__((used)) static HOST_WIDE_INT
get_jump_table_size (rtx insn)
{


  if (JUMP_TABLES_IN_TEXT_SECTION || readonly_data_section == text_section)
    {
      rtx body = PATTERN (insn);
      int elt = GET_CODE (body) == ADDR_DIFF_VEC ? 1 : 0;

      return GET_MODE_SIZE (GET_MODE (body)) * XVECLEN (body, elt);
    }

  return 0;
}
