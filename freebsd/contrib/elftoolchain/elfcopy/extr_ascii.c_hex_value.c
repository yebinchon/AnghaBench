
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (int) ;

__attribute__((used)) static int
hex_value(int x)
{

 if (isdigit(x))
  return (x - '0');
 else if (x >= 'a' && x <= 'f')
  return (x - 'a' + 10);
 else
  return (x - 'A' + 10);
}
