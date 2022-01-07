
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {int number; int type; } ;
typedef enum arm_reg_type { ____Placeholder_arm_reg_type } arm_reg_type ;


 int FAIL ;
 int REG_TYPE_CN ;


 int REG_TYPE_MMXWCG ;




 unsigned long strtoul (char*,char**,int) ;

__attribute__((used)) static int
arm_reg_alt_syntax (char **ccp, char *start, struct reg_entry *reg,
                    enum arm_reg_type type)
{

  switch (type)
    {
    case 129:
    case 131:
    case 128:
    case 130:

      if (reg && reg->type == REG_TYPE_CN)
 return reg->number;
      break;

    case 133:

      {
 unsigned long processor = strtoul (start, ccp, 10);
 if (*ccp != start && processor <= 15)
   return processor;
      }

    case 132:


      if (reg && reg->type == REG_TYPE_MMXWCG)
 return reg->number;
      break;

    default:
      break;
    }

  return FAIL;
}
