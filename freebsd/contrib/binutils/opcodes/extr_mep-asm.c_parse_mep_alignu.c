
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cgen_operand_type { ____Placeholder_cgen_operand_type } cgen_operand_type ;
typedef int CGEN_CPU_DESC ;


 char const* parse_mep_align (int ,char const**,int,long*) ;

const char *
parse_mep_alignu (CGEN_CPU_DESC cd, const char ** strp,
   enum cgen_operand_type type, unsigned long *field)
{
  return parse_mep_align (cd, strp, type, (long *) field);
}
