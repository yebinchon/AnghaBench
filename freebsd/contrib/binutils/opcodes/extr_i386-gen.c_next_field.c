
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* remove_leading_whitespaces (char*) ;
 int remove_trailing_whitespaces (char*) ;

__attribute__((used)) static char *
next_field (char *str, char **next)
{
  char *p;

  p = remove_leading_whitespaces (str);
  for (str = p; *str != ',' && *str != '\0'; str++);

  *str = '\0';
  remove_trailing_whitespaces (p);

  *next = str + 1;

  return p;
}
