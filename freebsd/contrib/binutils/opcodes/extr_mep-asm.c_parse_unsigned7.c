
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cgen_operand_type { ____Placeholder_cgen_operand_type } cgen_operand_type ;
typedef unsigned long bfd_vma ;
typedef int CGEN_CPU_DESC ;


 int BFD_RELOC_MEP_TPREL7 ;
 int BFD_RELOC_MEP_TPREL7A2 ;
 int BFD_RELOC_MEP_TPREL7A4 ;



 char const* _ (char*) ;
 int abort () ;
 char* cgen_parse_address (int ,char const**,int,int,int *,unsigned long*) ;
 char const* parse_mep_alignu (int ,char const**,int,unsigned long*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static const char *
parse_unsigned7 (CGEN_CPU_DESC cd, const char **strp,
   enum cgen_operand_type opindex, unsigned long *valuep)
{
  const char *errmsg;
  bfd_vma value;



  if (strncasecmp (*strp, "%tpoff(", 7) == 0)
    {
      int reloc;
      *strp += 7;
      switch (opindex)
 {
 case 130:
   reloc = BFD_RELOC_MEP_TPREL7;
   break;
 case 129:
   reloc = BFD_RELOC_MEP_TPREL7A2;
   break;
 case 128:
   reloc = BFD_RELOC_MEP_TPREL7A4;
   break;
 default:

   abort ();
 }
      errmsg = cgen_parse_address (cd, strp, opindex, reloc,
       ((void*)0), &value);
      if (**strp != ')')
 return "missing `)'";
      ++*strp;
      *valuep = value;
      return errmsg;
    }

  if (**strp == '%')
    return _("invalid %function() here");

  return parse_mep_alignu (cd, strp, opindex, valuep);
}
