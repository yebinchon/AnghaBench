
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;
 int snprintf (char*,size_t,char*,char*,char const* const) ;

__attribute__((used)) static char *textify_hooks(char *buf, size_t size, unsigned int mask)
{
 static const char *const names[] = {
  "PREROUTING", "INPUT", "FORWARD",
  "OUTPUT", "POSTROUTING", "BROUTING",
 };
 unsigned int i;
 char *p = buf;
 bool np = 0;
 int res;

 *p = '\0';
 for (i = 0; i < ARRAY_SIZE(names); ++i) {
  if (!(mask & (1 << i)))
   continue;
  res = snprintf(p, size, "%s%s", np ? "/" : "", names[i]);
  if (res > 0) {
   size -= res;
   p += res;
  }
  np = 1;
 }

 return buf;
}
