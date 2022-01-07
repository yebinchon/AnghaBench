
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cgen_operand_type { ____Placeholder_cgen_operand_type } cgen_operand_type ;
typedef int CGEN_CPU_DESC ;
 int abort () ;
 char* cgen_parse_signed_integer (int ,char const**,int,long*) ;
 char* cgen_parse_unsigned_integer (int ,char const**,int,unsigned long*) ;

const char *
parse_mep_align (CGEN_CPU_DESC cd, const char ** strp,
   enum cgen_operand_type type, long *field)
{
  long lsbs = 0;
  const char *err;

  switch (type)
    {
    case 132:
    case 135:
    case 134:
    case 133:
    case 139:
    case 138:
    case 137:
      err = cgen_parse_signed_integer (cd, strp, type, field);
      break;
    case 136:
    case 131:
    case 130:
    case 129:
    case 128:
    case 140:
      err = cgen_parse_unsigned_integer (cd, strp, type, (unsigned long *) field);
      break;
    default:
      abort();
    }
  if (err)
    return err;
  switch (type)
    {
    case 131:
      lsbs = 0;
      break;
    case 132:
    case 135:
    case 134:
    case 133:
    case 136:
    case 130:
    case 139:
      lsbs = *field & 1;
      break;
    case 129:
    case 128:
    case 140:
    case 138:
      lsbs = *field & 3;
      break;
    case 137:
      lsbs = *field & 7;
      break;
    default:

      abort ();
    }
  if (lsbs)
    return "Value is not aligned enough";
  return ((void*)0);
}
