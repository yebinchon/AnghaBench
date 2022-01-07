
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 scalar_t__ PARSE_OPERAND_SUCCESS ;
 int SUCCESS ;
 scalar_t__ parse_address_main (char**,int,int ,int ) ;

__attribute__((used)) static int
parse_address (char **str, int i)
{
  return parse_address_main (str, i, 0, 0) == PARSE_OPERAND_SUCCESS
         ? SUCCESS : FAIL;
}
