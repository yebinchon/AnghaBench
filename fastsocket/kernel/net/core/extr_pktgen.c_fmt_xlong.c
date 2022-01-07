
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tohex (unsigned int) ;

__attribute__((used)) static int fmt_xlong(char *s, unsigned int i)
{
 char *bak = s;
 *s = tohex((i >> 12) & 0xf);
 if (s != bak || *s != '0')
  ++s;
 *s = tohex((i >> 8) & 0xf);
 if (s != bak || *s != '0')
  ++s;
 *s = tohex((i >> 4) & 0xf);
 if (s != bak || *s != '0')
  ++s;
 *s = tohex(i & 0xf);
 return s - bak + 1;
}
