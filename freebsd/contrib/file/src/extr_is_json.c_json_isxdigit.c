
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_isdigit (unsigned char) ;

__attribute__((used)) static int
json_isxdigit(unsigned char uc)
{
 if (json_isdigit(uc))
  return 1;
 switch (uc) {
 case 'a': case 'b': case 'c': case 'd': case 'e': case 'f':
 case 'A': case 'B': case 'C': case 'D': case 'E': case 'F':
  return 1;
 default:
  return 0;
 }
}
