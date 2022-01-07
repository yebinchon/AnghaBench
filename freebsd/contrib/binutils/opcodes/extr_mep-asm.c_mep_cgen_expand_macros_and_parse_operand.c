
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_FIELDS ;
typedef int CGEN_CPU_DESC ;


 char* expand_string (char const*,int) ;
 int free (char*) ;
 char* mep_cgen_parse_operand (int ,int,char const**,int *) ;
 scalar_t__ strlen (char const*) ;
 char* strstr (char const*,char*) ;

const char *
mep_cgen_expand_macros_and_parse_operand (CGEN_CPU_DESC cd, int opindex,
       const char ** strp_in, CGEN_FIELDS * fields)
{
  const char * errmsg = ((void*)0);
  char *str = 0, *hold = 0;
  const char **strp = 0;


  str = expand_string (*strp_in, 1);


  hold = str;
  strp = (const char **)(&str);

  errmsg = mep_cgen_parse_operand (cd, opindex, strp, fields);


  if (strlen (str) == 0)
    *strp_in += strlen (*strp_in);

  else
    {
      if (strstr (*strp_in, str))

 *strp_in = strstr (*strp_in, str);
      else

 *strp_in += (str - hold);
    }

  if (hold)
    free (hold);

  return errmsg;
}
