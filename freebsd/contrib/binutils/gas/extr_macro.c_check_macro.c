
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb ;
typedef int macro_entry ;


 char TOLOWER (char) ;
 scalar_t__ alloca (int) ;
 scalar_t__ hash_find (int ,char*) ;
 int is_name_beginner (char const) ;
 scalar_t__ is_name_ender (char const) ;
 scalar_t__ is_part_of_name (char const) ;
 char* macro_expand (int ,int *,int *,int *) ;
 int macro_hash ;
 int macro_mri ;
 int memcpy (char*,char const*,int) ;
 int sb_add_char (int *,int ) ;
 int sb_kill (int *) ;
 int sb_new (int *) ;

int
check_macro (const char *line, sb *expand,
      const char **error, macro_entry **info)
{
  const char *s;
  char *copy, *cs;
  macro_entry *macro;
  sb line_sb;

  if (! is_name_beginner (*line)
      && (! macro_mri || *line != '.'))
    return 0;

  s = line + 1;
  while (is_part_of_name (*s))
    ++s;
  if (is_name_ender (*s))
    ++s;

  copy = (char *) alloca (s - line + 1);
  memcpy (copy, line, s - line);
  copy[s - line] = '\0';
  for (cs = copy; *cs != '\0'; cs++)
    *cs = TOLOWER (*cs);

  macro = (macro_entry *) hash_find (macro_hash, copy);

  if (macro == ((void*)0))
    return 0;


  sb_new (&line_sb);
  while (*s != '\0' && *s != '\n' && *s != '\r')
    sb_add_char (&line_sb, *s++);

  sb_new (expand);
  *error = macro_expand (0, &line_sb, macro, expand);

  sb_kill (&line_sb);


  if (info)
    *info = macro;

  return 1;
}
