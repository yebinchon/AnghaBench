
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_operand_result ;
typedef int group_reloc_type ;


 int parse_address_main (char**,int,int,int ) ;

__attribute__((used)) static parse_operand_result
parse_address_group_reloc (char **str, int i, group_reloc_type type)
{
  return parse_address_main (str, i, 1, type);
}
