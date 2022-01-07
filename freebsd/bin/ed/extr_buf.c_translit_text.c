
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* ctab ;

char *
translit_text(char *s, int len, int from, int to)
{
 static int i = 0;

 unsigned char *us;

 ctab[i] = i;
 ctab[i = from] = to;
 for (us = (unsigned char *) s; len-- > 0; us++)
  *us = ctab[*us];
 return s;
}
