
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ggc_alloc_string (char const*,int) ;
 char* i386_pe_strip_name_encoding (char const*) ;
 char* strchr (char const*,char) ;

const char *
i386_pe_strip_name_encoding_full (const char *str)
{
  const char *p;
  const char *name = i386_pe_strip_name_encoding (str);


  if (*name == '@')
    name++;


  p = strchr (name, '@');
  if (p)
    return ggc_alloc_string (name, p - name);

  return name;
}
