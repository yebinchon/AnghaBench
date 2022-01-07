
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef double DOUBLEST ;


 char* fixed_type_info (struct type*) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;

__attribute__((used)) static DOUBLEST
scaling_factor (struct type *type)
{
  const char *encoding = fixed_type_info (type);
  unsigned long num0, den0, num1, den1;
  int n;

  n = sscanf (encoding, "_%lu_%lu_%lu_%lu", &num0, &den0, &num1, &den1);

  if (n < 2)
    return 1.0;
  else if (n == 4)
    return (DOUBLEST) num1 / (DOUBLEST) den1;
  else
    return (DOUBLEST) num0 / (DOUBLEST) den0;
}
