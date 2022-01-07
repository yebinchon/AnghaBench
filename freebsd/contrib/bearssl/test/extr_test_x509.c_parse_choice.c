
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
parse_choice(const char *s, const char *acceptable)
{
 int c;

 c = *s;
 while (*acceptable) {
  if (c == *acceptable ++) {
   return 0;
  }
 }
 return -1;
}
