
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_unit_factor(const char *end, unsigned long *val)
{
 if (!*end)
  return 1;
 else if (!strcasecmp(end, "k")) {
  *val *= 1024;
  return 1;
 }
 else if (!strcasecmp(end, "m")) {
  *val *= 1024 * 1024;
  return 1;
 }
 else if (!strcasecmp(end, "g")) {
  *val *= 1024 * 1024 * 1024;
  return 1;
 }
 return 0;
}
