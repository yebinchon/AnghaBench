
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef double DOUBLEST ;


 char* fixed_type_info (struct type*) ;
 int sscanf (char const*,char*,long*,long*) ;

DOUBLEST
ada_delta (struct type *type)
{
  const char *encoding = fixed_type_info (type);
  long num, den;

  if (sscanf (encoding, "_%ld_%ld", &num, &den) < 2)
    return -1.0;
  else
    return (DOUBLEST) num / (DOUBLEST) den;
}
