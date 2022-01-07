
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_KEYWORD ;
typedef int CGEN_CPU_DESC ;


 char const* _ (char*) ;
 char* cgen_parse_keyword (int ,char const**,int *,long*) ;

const char *
parse_tpreg (CGEN_CPU_DESC cd, const char ** strp,
      CGEN_KEYWORD *keyword_table, long *field)
{
  const char *err;

  err = cgen_parse_keyword (cd, strp, keyword_table, field);
  if (err)
    return err;
  if (*field != 13)
    return _("Only $tp or $13 allowed for this opcode");
  return ((void*)0);
}
