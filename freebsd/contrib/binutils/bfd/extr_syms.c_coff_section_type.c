
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_to_type {char type; scalar_t__ section; } ;


 int strlen (scalar_t__) ;
 int strncmp (char const*,scalar_t__,int ) ;
 struct section_to_type* stt ;

__attribute__((used)) static char
coff_section_type (const char *s)
{
  const struct section_to_type *t;

  for (t = &stt[0]; t->section; t++)
    if (!strncmp (s, t->section, strlen (t->section)))
      return t->type;

  return '?';
}
