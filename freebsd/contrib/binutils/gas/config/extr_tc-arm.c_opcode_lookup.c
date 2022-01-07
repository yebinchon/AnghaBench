
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asm_opcode {int tag; } ;
struct asm_cond {void* value; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_3__ {scalar_t__ elems; } ;
struct TYPE_4__ {int size_req; void* cond; int error; TYPE_1__ vectype; } ;


 scalar_t__ ARM_CPU_HAS_FEATURE (int ,int ) ;
 int BAD_COND ;
 void* COND_ALWAYS ;
 scalar_t__ FAIL ;






 int OT_odd_infix_0 ;



 int _ (char*) ;
 int arm_cond_hsh ;
 int arm_ops_hsh ;
 int as_warn (int ) ;
 int assert (struct asm_cond const*) ;
 int cpu_variant ;
 int fpu_neon_ext_v1 ;
 void* hash_find_n (int ,char*,int) ;
 TYPE_2__ inst ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 scalar_t__ parse_neon_type (TYPE_1__*,char**) ;
 int thumb_mode ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static const struct asm_opcode *
opcode_lookup (char **str)
{
  char *end, *base;
  char *affix;
  const struct asm_opcode *opcode;
  const struct asm_cond *cond;
  char save[2];
  bfd_boolean neon_supported;

  neon_supported = ARM_CPU_HAS_FEATURE (cpu_variant, fpu_neon_ext_v1);



  for (base = end = *str; *end != '\0'; end++)
    if (*end == ' ' || ((unified_syntax || neon_supported) && *end == '.'))
      break;

  if (end == base)
    return 0;


  if (end[0] == '.')
    {
      int offset = 2;



      if (unified_syntax && end[1] == 'w')
 inst.size_req = 4;
      else if (unified_syntax && end[1] == 'n')
 inst.size_req = 2;
      else
        offset = 0;

      inst.vectype.elems = 0;

      *str = end + offset;

      if (end[offset] == '.')
 {


          if (parse_neon_type (&inst.vectype, str) == FAIL)
     return 0;
        }
      else if (end[offset] != '\0' && end[offset] != ' ')
        return 0;
    }
  else
    *str = end;


  opcode = hash_find_n (arm_ops_hsh, base, end - base);
  if (opcode)
    {

      if (opcode->tag < OT_odd_infix_0)
 {
   inst.cond = COND_ALWAYS;
   return opcode;
 }

      if (unified_syntax)
 as_warn (_("conditional infixes are deprecated in unified syntax"));
      affix = base + (opcode->tag - OT_odd_infix_0);
      cond = hash_find_n (arm_cond_hsh, affix, 2);
      assert (cond);

      inst.cond = cond->value;
      return opcode;
    }



  if (end - base < 3)
    return 0;


  affix = end - 2;
  cond = hash_find_n (arm_cond_hsh, affix, 2);
  opcode = hash_find_n (arm_ops_hsh, base, affix - base);
  if (opcode && cond)
    {

      switch (opcode->tag)
 {
 case 134:

   break;

 case 136:
 case 135:
 case 130:
   if (!unified_syntax)
     return 0;


 case 132:
        case 131:
 case 133:
   inst.cond = cond->value;
   return opcode;

 case 129:
 case 128:
   if (thumb_mode)
     {
       inst.cond = cond->value;
     }
   else
     {

       inst.error = BAD_COND;
       inst.cond = COND_ALWAYS;
     }
   return opcode;

 default:
   return 0;
 }
    }



  if (end - base < 6)
    return 0;


  affix = base + 3;
  cond = hash_find_n (arm_cond_hsh, affix, 2);
  if (!cond)
    return 0;

  memcpy (save, affix, 2);
  memmove (affix, affix + 2, (end - affix) - 2);
  opcode = hash_find_n (arm_ops_hsh, base, (end - base) - 2);
  memmove (affix + 2, affix, (end - affix) - 2);
  memcpy (affix, save, 2);

  if (opcode
      && (opcode->tag == 136
   || opcode->tag == 135
   || opcode->tag == 133
   || opcode->tag == 134))
    {

      if (unified_syntax
   && (opcode->tag == 136
       || opcode->tag == 135))
 as_warn (_("conditional infixes are deprecated in unified syntax"));

      inst.cond = cond->value;
      return opcode;
    }

  return 0;
}
