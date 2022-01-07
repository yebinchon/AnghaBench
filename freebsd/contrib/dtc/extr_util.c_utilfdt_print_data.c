
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt32_to_cpu (int const) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ util_is_printable_string (char const*,int) ;

void utilfdt_print_data(const char *data, int len)
{
 int i;
 const char *s;


 if (len == 0)
  return;

 if (util_is_printable_string(data, len)) {
  printf(" = ");

  s = data;
  do {
   printf("\"%s\"", s);
   s += strlen(s) + 1;
   if (s < data + len)
    printf(", ");
  } while (s < data + len);

 } else if ((len % 4) == 0) {
  const uint32_t *cell = (const uint32_t *)data;

  printf(" = <");
  for (i = 0, len /= 4; i < len; i++)
   printf("0x%08x%s", fdt32_to_cpu(cell[i]),
          i < (len - 1) ? " " : "");
  printf(">");
 } else {
  const unsigned char *p = (const unsigned char *)data;
  printf(" = [");
  for (i = 0; i < len; i++)
   printf("%02x%s", *p++, i < len - 1 ? " " : "");
  printf("]");
 }
}
