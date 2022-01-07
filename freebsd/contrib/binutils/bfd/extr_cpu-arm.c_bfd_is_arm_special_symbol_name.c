
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int BFD_ARM_SPECIAL_SYM_TYPE_MAP ;
 int BFD_ARM_SPECIAL_SYM_TYPE_OTHER ;
 int BFD_ARM_SPECIAL_SYM_TYPE_TAG ;
 int FALSE ;

bfd_boolean
bfd_is_arm_special_symbol_name (const char * name, int type)
{



  if (!name || name[0] != '$')
    return FALSE;
  if (name[1] == 'a' || name[1] == 't' || name[1] == 'd')
    type &= BFD_ARM_SPECIAL_SYM_TYPE_MAP;
  else if (name[1] == 'm' || name[1] == 'f' || name[1] == 'p')
    type &= BFD_ARM_SPECIAL_SYM_TYPE_TAG;
  else if (name[1] >= 'a' && name[1] <= 'z')
    type &= BFD_ARM_SPECIAL_SYM_TYPE_OTHER;
  else
    return FALSE;

  return (type != 0 && (name[2] == 0 || name[2] == '.'));
}
