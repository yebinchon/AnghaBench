
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
find_template_name_end (char *p)
{
  int depth = 1;
  int just_seen_right = 0;
  int just_seen_colon = 0;
  int just_seen_space = 0;

  if (!p || (*p != '<'))
    return 0;

  while (*++p)
    {
      switch (*p)
 {
 case '\'':
 case '\"':
 case '{':
 case '}':

   return 0;
 case '<':
   depth++;
   if (just_seen_colon || just_seen_right || just_seen_space)
     return 0;
   break;
 case '>':
   if (just_seen_colon || just_seen_right)
     return 0;
   just_seen_right = 1;
   if (--depth == 0)
     return ++p;
   break;
 case ':':
   if (just_seen_space || (just_seen_colon > 1))
     return 0;
   just_seen_colon++;
   break;
 case ' ':
   break;
 default:
   if (!((*p >= 'a' && *p <= 'z') ||
  (*p >= 'A' && *p <= 'Z') ||
  (*p >= '0' && *p <= '9') ||
  (*p == '_') || (*p == ',') ||
  (*p == '&') || (*p == '*') ||
  (*p == '(') || (*p == ')') ||
  (*p == '[') || (*p == ']')))
     return 0;
 }
      if (*p != ' ')
 just_seen_space = 0;
      if (*p != ':')
 just_seen_colon = 0;
      if (*p != '>')
 just_seen_right = 0;
    }
  return 0;
}
