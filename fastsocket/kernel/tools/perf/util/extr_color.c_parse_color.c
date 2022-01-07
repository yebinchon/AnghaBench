
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (char const* const*) ;
 int strncasecmp (char const*,char const*,int) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int parse_color(const char *name, int len)
{
 static const char * const color_names[] = {
  "normal", "black", "red", "green", "yellow",
  "blue", "magenta", "cyan", "white"
 };
 char *end;
 int i;

 for (i = 0; i < (int)ARRAY_SIZE(color_names); i++) {
  const char *str = color_names[i];
  if (!strncasecmp(name, str, len) && !str[len])
   return i - 1;
 }
 i = strtol(name, &end, 10);
 if (end - name == len && i >= -1 && i <= 255)
  return i;
 return -2;
}
