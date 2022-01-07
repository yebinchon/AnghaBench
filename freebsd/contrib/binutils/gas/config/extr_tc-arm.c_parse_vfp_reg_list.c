
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reg_list_els { ____Placeholder_reg_list_els } reg_list_els ;
typedef enum arm_reg_type { ____Placeholder_arm_reg_type } arm_reg_type ;
struct TYPE_2__ {void* error; } ;


 scalar_t__ ARM_CPU_HAS_FEATURE (int ,int ) ;
 int ARM_MERGE_FEATURE_SETS (int ,int ,int ) ;
 int FAIL ;



 int REG_TYPE_NDQ ;
 int REG_TYPE_NQ ;
 int REG_TYPE_VFD ;
 int REG_TYPE_VFS ;
 void* _ (char*) ;
 int abort () ;
 int arm_arch_used ;
 int arm_typed_reg_parse (char**,int,int*,int *) ;
 int as_tsktsk (void*) ;
 int cpu_variant ;
 int first_error (void*) ;
 int fpu_vfp_ext_v3 ;
 void* gettext (char*) ;
 TYPE_1__ inst ;
 char** reg_expected_msgs ;
 int skip_past_comma (char**) ;
 int thumb_arch_used ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static int
parse_vfp_reg_list (char **ccp, unsigned int *pbase, enum reg_list_els etype)
{
  char *str = *ccp;
  int base_reg;
  int new_base;
  enum arm_reg_type regtype = 0;
  int max_regs = 0;
  int count = 0;
  int warned = 0;
  unsigned long mask = 0;
  int i;

  if (*str != '{')
    {
      inst.error = _("expecting {");
      return FAIL;
    }

  str++;

  switch (etype)
    {
    case 128:
      regtype = REG_TYPE_VFS;
      max_regs = 32;
      break;

    case 129:
      regtype = REG_TYPE_VFD;
      break;

    case 130:
      regtype = REG_TYPE_NDQ;
      break;
    }

  if (etype != 128)
    {

      if (ARM_CPU_HAS_FEATURE (cpu_variant, fpu_vfp_ext_v3))
        {
          max_regs = 32;
          if (thumb_mode)
            ARM_MERGE_FEATURE_SETS (thumb_arch_used, thumb_arch_used,
                                    fpu_vfp_ext_v3);
          else
            ARM_MERGE_FEATURE_SETS (arm_arch_used, arm_arch_used,
                                    fpu_vfp_ext_v3);
        }
      else
        max_regs = 16;
    }

  base_reg = max_regs;

  do
    {
      int setmask = 1, addregs = 1;

      new_base = arm_typed_reg_parse (&str, regtype, &regtype, ((void*)0));

      if (new_base == FAIL)
 {
   first_error (_(reg_expected_msgs[regtype]));
   return FAIL;
 }

      if (new_base >= max_regs)
        {
          first_error (_("register out of range in list"));
          return FAIL;
        }


      if (regtype == REG_TYPE_NQ)
        {
          setmask = 3;
          addregs = 2;
        }

      if (new_base < base_reg)
 base_reg = new_base;

      if (mask & (setmask << new_base))
 {
   first_error (_("invalid register list"));
   return FAIL;
 }

      if ((mask >> new_base) != 0 && ! warned)
 {
   as_tsktsk (_("register list not in ascending order"));
   warned = 1;
 }

      mask |= setmask << new_base;
      count += addregs;

      if (*str == '-')
 {
   int high_range;

   str++;

   if ((high_range = arm_typed_reg_parse (&str, regtype, ((void*)0), ((void*)0)))
              == FAIL)
     {
       inst.error = gettext (reg_expected_msgs[regtype]);
       return FAIL;
     }

          if (high_range >= max_regs)
            {
              first_error (_("register out of range in list"));
              return FAIL;
            }

          if (regtype == REG_TYPE_NQ)
            high_range = high_range + 1;

   if (high_range <= new_base)
     {
       inst.error = _("register range not in ascending order");
       return FAIL;
     }

   for (new_base += addregs; new_base <= high_range; new_base += addregs)
     {
       if (mask & (setmask << new_base))
  {
    inst.error = _("invalid register list");
    return FAIL;
  }

       mask |= setmask << new_base;
       count += addregs;
     }
 }
    }
  while (skip_past_comma (&str) != FAIL);

  str++;


  if (count == 0 || count > max_regs)
    abort ();

  *pbase = base_reg;


  mask >>= base_reg;
  for (i = 0; i < count; i++)
    {
      if ((mask & (1u << i)) == 0)
 {
   inst.error = _("non-contiguous register range");
   return FAIL;
 }
    }

  *ccp = str;

  return count;
}
