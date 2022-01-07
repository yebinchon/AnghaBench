
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFT ;


 int FMTCHECK_PRECISION ;
 int FMTCHECK_UNKNOWN ;
 int RETURN (char const**,char const*,int ) ;
 int get_next_format_from_precision (char const**) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static EFT
get_next_format_from_width(const char **pf)
{
 const char *f;

 f = *pf;
 if (*f == '.') {
  f++;
  if (*f == '*') {
   RETURN(pf,f,FMTCHECK_PRECISION);
  }

  while (isdigit((unsigned char)*f)) f++;
  if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
 }
 RETURN(pf,f,get_next_format_from_precision(pf));

}
