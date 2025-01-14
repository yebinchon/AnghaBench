
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;
 int strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static int parse_attr(const char *name, int len)
{
 static const int attr_values[] = { 1, 2, 4, 5, 7 };
 static const char * const attr_names[] = {
  "bold", "dim", "ul", "blink", "reverse"
 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(attr_names); i++) {
  const char *str = attr_names[i];
  if (!strncasecmp(name, str, len) && !str[len])
   return attr_values[i];
 }
 return -1;
}
