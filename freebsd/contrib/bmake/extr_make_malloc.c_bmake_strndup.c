
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bmake_malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *
bmake_strndup(const char *str, size_t max_len)
{
 size_t len;
 char *p;

 if (str == ((void*)0))
  return ((void*)0);

 len = strlen(str);
 if (len > max_len)
  len = max_len;
 p = bmake_malloc(len + 1);
 memcpy(p, str, len);
 p[len] = '\0';

 return(p);
}
