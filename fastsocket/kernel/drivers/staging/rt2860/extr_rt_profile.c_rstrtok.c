
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __rstrtok ;
 char* strpbrk (char*,char const*) ;
 int strspn (char*,char const*) ;

char * rstrtok(char * s,const char * ct)
{
 char *sbegin, *send;

 sbegin = s ? s : __rstrtok;
 if (!sbegin)
 {
  return ((void*)0);
 }

 sbegin += strspn(sbegin,ct);
 if (*sbegin == '\0')
 {
  __rstrtok = ((void*)0);
  return( ((void*)0) );
 }

 send = strpbrk( sbegin, ct);
 if (send && *send != '\0')
  *send++ = '\0';

 __rstrtok = send;

 return (sbegin);
}
