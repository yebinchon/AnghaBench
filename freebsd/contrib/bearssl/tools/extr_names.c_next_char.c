
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_ign (int) ;

__attribute__((used)) static int
next_char(const char **ps, const char *limit)
{
 for (;;) {
  int c;

  if (*ps == limit) {
   return 0;
  }
  c = *(*ps) ++;
  if (c == 0) {
   return 0;
  }
  if (c >= 'A' && c <= 'Z') {
   c += 'a' - 'A';
  }
  if (!is_ign(c)) {
   return c;
  }
 }
}
