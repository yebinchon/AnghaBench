
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* uu_zalloc (size_t) ;

char *
uu_strdup(const char *str)
{
 char *buf = ((void*)0);

 if (str != ((void*)0)) {
  size_t sz;

  sz = strlen(str) + 1;
  buf = uu_zalloc(sz);
  if (buf != ((void*)0))
   (void) memcpy(buf, str, sz);
 }
 return (buf);
}
