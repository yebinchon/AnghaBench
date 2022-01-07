
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct group_reloc_table_entry {scalar_t__ alu_code; } ;
typedef int parse_operand_result ;
struct TYPE_3__ {scalar_t__ type; int exp; } ;
struct TYPE_4__ {TYPE_1__ reloc; int error; } ;


 scalar_t__ FAIL ;
 int GE_NO_PREFIX ;
 int PARSE_OPERAND_FAIL ;
 int PARSE_OPERAND_FAIL_NO_BACKTRACK ;
 int PARSE_OPERAND_SUCCESS ;
 scalar_t__ SUCCESS ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ find_group_reloc_table_entry (char**,struct group_reloc_table_entry**) ;
 TYPE_2__ inst ;
 scalar_t__ my_get_expression (int *,char**,int ) ;
 scalar_t__ parse_shifter_operand (char**,int) ;

__attribute__((used)) static parse_operand_result
parse_shifter_operand_group_reloc (char **str, int i)
{




  if (((*str)[0] == '#' && (*str)[1] == ':')
      || (*str)[0] == ':')
    {
      struct group_reloc_table_entry *entry;

      if ((*str)[0] == '#')
        (*str) += 2;
      else
        (*str)++;


      if (find_group_reloc_table_entry (str, &entry) == FAIL)
        {
          inst.error = _("unknown group relocation");
          return PARSE_OPERAND_FAIL_NO_BACKTRACK;
        }



      if (my_get_expression (&inst.reloc.exp, str, GE_NO_PREFIX))
        return PARSE_OPERAND_FAIL_NO_BACKTRACK;


      inst.reloc.type = entry->alu_code;
      assert (inst.reloc.type != 0);

      return PARSE_OPERAND_SUCCESS;
    }
  else
    return parse_shifter_operand (str, i) == SUCCESS
           ? PARSE_OPERAND_SUCCESS : PARSE_OPERAND_FAIL;


}
