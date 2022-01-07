
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_KEYWORD ;
typedef int CGEN_CPU_DESC ;


 int MEP_OPERAND_CSRN_IDX ;
 char* cgen_parse_keyword (int ,char const**,int *,long*) ;
 char* cgen_parse_unsigned_integer (int ,char const**,int ,unsigned long*) ;

const char *
parse_csrn (CGEN_CPU_DESC cd, const char **strp,
     CGEN_KEYWORD *keyword_table, long *field)
{
  const char *err;
  unsigned long value;

  err = cgen_parse_keyword (cd, strp, keyword_table, field);
  if (!err)
    return ((void*)0);

  err = cgen_parse_unsigned_integer (cd, strp, MEP_OPERAND_CSRN_IDX, & value);
  if (err)
    return err;
  *field = value;
  return ((void*)0);
}
