
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static const char *ends_with(const char *str, const char *suffix)
{
 size_t suffix_len = strlen(suffix);
 const char *p = str;

 if (strlen(str) > suffix_len) {
  p = str + strlen(str) - suffix_len;
  if (!strncmp(p, suffix, suffix_len))
   return p;
 }

 return ((void*)0);
}
