
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {char* name; int const_len; scalar_t__ depth; int is_patterned; } ;


 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int const) ;
 int tomoyo_file_matches_to_pattern (char const*,char const*,char const*,char const*) ;
 int tomoyo_pathcmp (struct tomoyo_path_info const*,struct tomoyo_path_info const*) ;

bool tomoyo_path_matches_pattern(const struct tomoyo_path_info *filename,
     const struct tomoyo_path_info *pattern)
{




 const char *f = filename->name;
 const char *p = pattern->name;
 const int len = pattern->const_len;


 if (!pattern->is_patterned)
  return !tomoyo_pathcmp(filename, pattern);

 if (filename->depth != pattern->depth)
  return 0;

 if (strncmp(f, p, len))
  return 0;
 f += len;
 p += len;

 while (*f && *p) {
  const char *f_delimiter = strchr(f, '/');
  const char *p_delimiter = strchr(p, '/');
  if (!f_delimiter)
   f_delimiter = f + strlen(f);
  if (!p_delimiter)
   p_delimiter = p + strlen(p);
  if (!tomoyo_file_matches_to_pattern(f, f_delimiter,
          p, p_delimiter))
   return 0;
  f = f_delimiter;
  if (*f)
   f++;
  p = p_delimiter;
  if (*p)
   p++;
 }

 while (*p == '\\' &&
        (*(p + 1) == '*' || *(p + 1) == '@'))
  p += 2;
 return !*f && !*p;
}
