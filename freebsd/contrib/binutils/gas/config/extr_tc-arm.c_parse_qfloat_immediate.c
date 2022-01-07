
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int LITTLENUM_TYPE ;


 int FAIL ;
 int LITTLENUM_NUMBER_OF_BITS ;
 int MAX_LITTLENUMS ;
 int SUCCESS ;
 char* atof_ieee (char*,char,unsigned int*) ;
 scalar_t__ is_quarter_float (unsigned int) ;
 int skip_past_char (char**,char) ;
 int skip_whitespace (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static unsigned
parse_qfloat_immediate (char **ccp, int *immed)
{
  char *str = *ccp;
  char *fpnum;
  LITTLENUM_TYPE words[MAX_LITTLENUMS];
  int found_fpchar = 0;

  skip_past_char (&str, '#');






  fpnum = str;
  skip_whitespace (fpnum);

  if (strncmp (fpnum, "0x", 2) == 0)
    return FAIL;
  else
    {
      for (; *fpnum != '\0' && *fpnum != ' ' && *fpnum != '\n'; fpnum++)
        if (*fpnum == '.' || *fpnum == 'e' || *fpnum == 'E')
          {
            found_fpchar = 1;
            break;
          }

      if (!found_fpchar)
        return FAIL;
    }

  if ((str = atof_ieee (str, 's', words)) != ((void*)0))
    {
      unsigned fpword = 0;
      int i;


      for (i = 0; i < 32 / LITTLENUM_NUMBER_OF_BITS; i++)
        {
          fpword <<= LITTLENUM_NUMBER_OF_BITS;
          fpword |= words[i];
        }

      if (is_quarter_float (fpword) || (fpword & 0x7fffffff) == 0)
        *immed = fpword;
      else
        return FAIL;

      *ccp = str;

      return SUCCESS;
    }

  return FAIL;
}
