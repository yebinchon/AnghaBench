
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enomem () ;
 char* malloc (size_t) ;
 char* memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
bmake_strdup(const char *str)
{
 size_t len;
 char *p;

 len = strlen(str) + 1;
 if ((p = malloc(len)) == ((void*)0))
  enomem();
 return memcpy(p, str, len);
}
