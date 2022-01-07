
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* attr_string (char const*,int) ;
 char* scan_comma_elt (char const**) ;

__attribute__((used)) static char *
next_comma_elt (const char **pstr)
{
  const char *start;

  start = scan_comma_elt (pstr);

  if (start == ((void*)0))
    return ((void*)0);

  return attr_string (start, *pstr - start);
}
