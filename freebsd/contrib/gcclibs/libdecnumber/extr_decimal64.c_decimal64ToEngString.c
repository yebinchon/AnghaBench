
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal64 ;
typedef int decNumber ;


 int decNumberToEngString (int *,char*) ;
 int decimal64ToNumber (int const*,int *) ;

char *
decimal64ToEngString (const decimal64 * d64, char *string)
{
  decNumber dn;
  decimal64ToNumber (d64, &dn);
  decNumberToEngString (&dn, string);
  return string;
}
