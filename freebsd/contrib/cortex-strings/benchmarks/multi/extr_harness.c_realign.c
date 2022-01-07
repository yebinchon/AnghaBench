
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ALIGNMENT ;

__attribute__((used)) static char *realign(char *p, int alignment)
{
  uintptr_t pp = (uintptr_t)p;
  pp = (pp + (MAX_ALIGNMENT - 1)) & ~(MAX_ALIGNMENT - 1);
  pp += alignment;

  return (char *)pp;
}
