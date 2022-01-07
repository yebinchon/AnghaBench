
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
dt_header_fmt_func(char *buf, const char *str)
{
 for (;;) {
  if (*str == '-') {
   *buf++ = '_';
   *buf++ = '_';
   str++;
  } else if ((*buf++ = *str++) == '\0') {
   break;
  }
 }
}
