
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int release_pack_memory (scalar_t__,int) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

char *xstrdup(const char *str)
{
 char *ret = strdup(str);
 if (!ret) {
  release_pack_memory(strlen(str) + 1, -1);
  ret = strdup(str);
  if (!ret)
   die("Out of memory, strdup failed");
 }
 return ret;
}
