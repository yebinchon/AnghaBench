
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cgen_parse_operand_result { ____Placeholder_cgen_parse_operand_result } cgen_parse_operand_result ;
typedef long bfd_vma ;
typedef int CGEN_CPU_DESC ;


 int BFD_RELOC_MEP_GPREL ;
 int BFD_RELOC_MEP_HI16S ;
 int BFD_RELOC_MEP_HI16U ;
 int BFD_RELOC_MEP_LOW16 ;
 int BFD_RELOC_MEP_TPREL ;
 int BFD_RELOC_NONE ;
 int CGEN_PARSE_OPERAND_RESULT_NUMBER ;
 char* cgen_parse_address (int ,char const**,int,int ,int*,long*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *
parse_zero (CGEN_CPU_DESC cd, const char **strp, int opindex, long *valuep)
{
  const char *errmsg;
  enum cgen_parse_operand_result result_type;
  bfd_vma value;






  if (strncmp (*strp, "($", 2) == 0)
    return "not zero";

  if (strncasecmp (*strp, "%lo(", 4) == 0)
    {
      *strp += 4;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_LOW16,
       &result_type, &value);
      if (**strp != ')')
 return "missing `)'";
      ++*strp;
      if (errmsg == ((void*)0)
   && (result_type != CGEN_PARSE_OPERAND_RESULT_NUMBER || value != 0))
 return "not zero";
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%hi(", 4) == 0)
    {
      *strp += 4;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_HI16S,
       &result_type, &value);
      if (**strp != ')')
 return "missing `)'";
      ++*strp;
      if (errmsg == ((void*)0)
   && (result_type != CGEN_PARSE_OPERAND_RESULT_NUMBER || value != 0))
 return "not zero";
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%uhi(", 5) == 0)
    {
      *strp += 5;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_HI16U,
       &result_type, &value);
      if (**strp != ')')
 return "missing `)'";
      ++*strp;
      if (errmsg == ((void*)0)
   && (result_type != CGEN_PARSE_OPERAND_RESULT_NUMBER || value != 0))
 return "not zero";
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%sdaoff(", 8) == 0)
    {
      *strp += 8;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_GPREL,
       &result_type, &value);
      if (**strp != ')')
 return "missing `)'";
      ++*strp;
      if (errmsg == ((void*)0)
   && (result_type != CGEN_PARSE_OPERAND_RESULT_NUMBER || value != 0))
 return "not zero";
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%tpoff(", 7) == 0)
    {
      *strp += 7;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_TPREL,
       &result_type, &value);
      if (**strp != ')')
 return "missing `)'";
      ++*strp;
      if (errmsg == ((void*)0)
   && (result_type != CGEN_PARSE_OPERAND_RESULT_NUMBER || value != 0))
 return "not zero";
      *valuep = value;
      return errmsg;
    }

  if (**strp == '%')
    return "invalid %function() here";

  errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_NONE,
          &result_type, &value);
  if (errmsg == ((void*)0)
      && (result_type != CGEN_PARSE_OPERAND_RESULT_NUMBER || value != 0))
    return "not zero";

  return errmsg;
}
