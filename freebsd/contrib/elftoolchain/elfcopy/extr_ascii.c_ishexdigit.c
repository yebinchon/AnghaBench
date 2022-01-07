
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (int) ;

__attribute__((used)) static int
ishexdigit(int x)
{

 if (isdigit(x))
  return (1);
 if ((x >= 'a' && x <= 'f') || (x >= 'A' && x <= 'F'))
  return (1);

 return (0);
}
