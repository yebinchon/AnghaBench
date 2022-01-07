
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void
get_opc_prefix (const char **ptr, char *dest)
{
  char *c = strchr (*ptr, '.');
  if (c != ((void*)0))
    {
      memcpy (dest, *ptr, c - *ptr);
      dest[c - *ptr] = '\0';
      *ptr = c + 1;
    }
  else
    {
      int l = strlen (*ptr);
      memcpy (dest, *ptr, l);
      dest[l] = '\0';
      *ptr += l;
    }
}
