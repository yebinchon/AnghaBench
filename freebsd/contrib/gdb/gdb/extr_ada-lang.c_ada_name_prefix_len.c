
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;

int
ada_name_prefix_len (const char *name)
{
  if (name == ((void*)0))
    return 0;
  else
    {
      const char *p = strstr (name, "___");
      if (p == ((void*)0))
 return strlen (name);
      else
 return p - name;
    }
}
