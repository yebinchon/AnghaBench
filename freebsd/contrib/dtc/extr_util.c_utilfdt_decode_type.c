
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char const) ;

int utilfdt_decode_type(const char *fmt, int *type, int *size)
{
 int qualifier = 0;

 if (!*fmt)
  return -1;


 *size = -1;
 if (strchr("hlLb", *fmt)) {
  qualifier = *fmt++;
  if (qualifier == *fmt) {
   switch (*fmt++) {

   case 'h':
    qualifier = 'b';
    break;
   }
  }
 }


 if ((*fmt == '\0') || !strchr("iuxs", *fmt))
  return -1;


 if (*fmt != 's')
  *size = qualifier == 'b' ? 1 :
    qualifier == 'h' ? 2 :
    qualifier == 'l' ? 4 : -1;
 *type = *fmt++;


 if (*fmt)
  return -1;
 return 0;
}
