
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ISSPACE (char const) ;
 char* XSTR (int ,int) ;
 int gen_bypass_1 (char const*,int) ;

__attribute__((used)) static void
gen_bypass (rtx def)
{
  const char *p, *base;

  for (p = base = XSTR (def, 1); *p; p++)
    if (*p == ',')
      {
 gen_bypass_1 (base, p - base);
 do
   p++;
 while (ISSPACE (*p));
 base = p;
      }
  gen_bypass_1 (base, p - base);
}
