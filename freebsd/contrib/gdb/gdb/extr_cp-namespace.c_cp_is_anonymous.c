
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strstr (char const*,char*) ;

int
cp_is_anonymous (const char *namespace)
{
  return (strstr (namespace, "(anonymous namespace)")
   != ((void*)0));
}
