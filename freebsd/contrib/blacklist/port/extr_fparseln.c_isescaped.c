
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
isescaped(const char *sp, const char *p, int esc)
{
 const char *cp;
 size_t ne;


 if (esc == '\0')
  return 0;


 for (ne = 0, cp = p; --cp >= sp && *cp == esc; ne++)
  continue;


 return (ne & 1) != 0;
}
