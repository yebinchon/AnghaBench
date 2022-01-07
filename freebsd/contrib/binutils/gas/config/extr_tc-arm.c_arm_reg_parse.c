
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_entry {int type; int number; TYPE_1__* neon; } ;
typedef enum arm_reg_type { ____Placeholder_arm_reg_type } arm_reg_type ;
struct TYPE_2__ {int defined; } ;


 int FAIL ;
 int NTA_HASINDEX ;
 int arm_reg_alt_syntax (char**,char*,struct reg_entry*,int) ;
 struct reg_entry* arm_reg_parse_multi (char**) ;

__attribute__((used)) static int
arm_reg_parse (char **ccp, enum arm_reg_type type)
{
  char *start = *ccp;
  struct reg_entry *reg = arm_reg_parse_multi (ccp);
  int ret;


  if (reg && reg->neon && (reg->neon->defined & NTA_HASINDEX))
    return FAIL;

  if (reg && reg->type == type)
    return reg->number;

  if ((ret = arm_reg_alt_syntax (ccp, start, reg, type)) != FAIL)
    return ret;

  *ccp = start;
  return FAIL;
}
