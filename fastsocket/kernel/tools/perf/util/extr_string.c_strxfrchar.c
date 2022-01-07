
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

char *strxfrchar(char *s, char from, char to)
{
 char *p = s;

 while ((p = strchr(p, from)) != ((void*)0))
  *p++ = to;

 return s;
}
