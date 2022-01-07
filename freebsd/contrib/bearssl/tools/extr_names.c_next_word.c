
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_ign (char const) ;

__attribute__((used)) static const char *
next_word(const char **str, size_t *len)
{
 int c;
 const char *begin;
 size_t u;




 for (;;) {
  c = **str;
  if (c == 0) {
   *len = 0;
   return ((void*)0);
  }
  if (!is_ign(c) && c != ',') {
   break;
  }
  (*str) ++;
 }




 begin = *str;
 for (;;) {
  c = *(*str);
  if (c == 0 || c == ',') {
   break;
  }
  (*str) ++;
 }




 u = (size_t)(*str - begin);
 while (u > 0 && is_ign(begin[u - 1])) {
  u --;
 }
 if (c == ',') {
  (*str) ++;
 }
 *len = u;
 return begin;
}
