
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* linep ;

__attribute__((used)) static int
nextfield(char *buf)
{
 char *p, *q;

 p = linep;
 while (*p == ' ' || *p == '\t')
  p++;
 q = buf;
 while (*p != ' ' && *p != '\t' && *p != '\0')
  *q++ = *p++;
 *q = '\0';
 linep = p;
 return (q > buf);
}
