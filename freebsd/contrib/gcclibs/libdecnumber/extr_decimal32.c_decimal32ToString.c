
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal32 ;
typedef int decNumber ;


 int decNumberToString (int *,char*) ;
 int decimal32ToNumber (int const*,int *) ;

char *
decimal32ToString (const decimal32 * d32, char *string)
{
  decNumber dn;
  decimal32ToNumber (d32, &dn);
  decNumberToString (&dn, string);
  return string;
}
