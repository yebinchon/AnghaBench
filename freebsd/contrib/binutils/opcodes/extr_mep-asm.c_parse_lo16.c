
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cgen_parse_operand_result { ____Placeholder_cgen_parse_operand_result } cgen_parse_operand_result ;
typedef int bfd_vma ;
typedef int CGEN_CPU_DESC ;


 int BFD_RELOC_MEP_GPREL ;
 int BFD_RELOC_MEP_HI16S ;
 int BFD_RELOC_MEP_HI16U ;
 int BFD_RELOC_MEP_LOW16 ;
 int BFD_RELOC_MEP_TPREL ;
 int CGEN_PARSE_OPERAND_RESULT_NUMBER ;
 char const* _ (char*) ;
 char* cgen_parse_address (int ,char const**,int,int ,int*,int*) ;
 char const* cgen_parse_signed_integer (int ,char const**,int,long*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static const char *
parse_lo16 (CGEN_CPU_DESC cd,
     const char **strp,
     int opindex,
     long *valuep,
     long signedp)
{
  const char *errmsg;
  enum cgen_parse_operand_result result_type;
  bfd_vma value;

  if (strncasecmp (*strp, "%lo(", 4) == 0)
    {
      *strp += 4;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_LOW16,
       & result_type, & value);
      if (**strp != ')')
 return _("missing `)'");
      ++*strp;
      if (errmsg == ((void*)0)
   && result_type == CGEN_PARSE_OPERAND_RESULT_NUMBER)
 value &= 0xffff;
      if (signedp)
 *valuep = (long)(short) value;
      else
 *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%hi(", 4) == 0)
    {
      *strp += 4;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_HI16S,
       & result_type, & value);
      if (**strp != ')')
 return _("missing `)'");
      ++*strp;
      if (errmsg == ((void*)0)
   && result_type == CGEN_PARSE_OPERAND_RESULT_NUMBER)
 value = (value + 0x8000) >> 16;
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%uhi(", 5) == 0)
    {
      *strp += 5;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_HI16U,
       & result_type, & value);
      if (**strp != ')')
 return _("missing `)'");
      ++*strp;
      if (errmsg == ((void*)0)
   && result_type == CGEN_PARSE_OPERAND_RESULT_NUMBER)
 value = value >> 16;
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%sdaoff(", 8) == 0)
    {
      *strp += 8;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_GPREL,
       ((void*)0), & value);
      if (**strp != ')')
 return _("missing `)'");
      ++*strp;
      *valuep = value;
      return errmsg;
    }

  if (strncasecmp (*strp, "%tpoff(", 7) == 0)
    {
      *strp += 7;
      errmsg = cgen_parse_address (cd, strp, opindex, BFD_RELOC_MEP_TPREL,
       ((void*)0), & value);
      if (**strp != ')')
 return _("missing `)'");
      ++*strp;
      *valuep = value;
      return errmsg;
    }

  if (**strp == '%')
    return _("invalid %function() here");

  return cgen_parse_signed_integer (cd, strp, opindex, valuep);
}
