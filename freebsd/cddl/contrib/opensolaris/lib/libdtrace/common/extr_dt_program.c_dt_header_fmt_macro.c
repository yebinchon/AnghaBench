
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (char const) ;

__attribute__((used)) static void
dt_header_fmt_macro(char *buf, const char *str)
{
 for (;;) {
  if (islower(*str)) {
   *buf++ = *str++ + 'A' - 'a';
  } else if (*str == '-') {
   *buf++ = '_';
   str++;
  } else if (*str == '.') {
   *buf++ = '_';
   str++;
  } else if ((*buf++ = *str++) == '\0') {
   break;
  }
 }
}
