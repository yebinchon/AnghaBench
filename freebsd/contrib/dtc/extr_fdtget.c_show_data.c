
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct display_info {char type; int size; } ;


 int const fdt32_to_cpu (int const) ;
 int fprintf (int ,char*) ;
 int printf (char*,...) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ util_is_printable_string (char const*,int) ;

__attribute__((used)) static int show_data(struct display_info *disp, const char *data, int len)
{
 int i, size;
 const uint8_t *p = (const uint8_t *)data;
 const char *s;
 int value;
 int is_string;
 char fmt[3];


 if (len == 0)
  return 0;

 is_string = (disp->type) == 's' ||
  (!disp->type && util_is_printable_string(data, len));
 if (is_string) {
  if (data[len - 1] != '\0') {
   fprintf(stderr, "Unterminated string\n");
   return -1;
  }
  for (s = data; s - data < len; s += strlen(s) + 1) {
   if (s != data)
    printf(" ");
   printf("%s", (const char *)s);
  }
  return 0;
 }
 size = disp->size;
 if (size == -1) {
  size = (len % 4) == 0 ? 4 : 1;
 } else if (len % size) {
  fprintf(stderr, "Property length must be a multiple of "
    "selected data size\n");
  return -1;
 }
 fmt[0] = '%';
 fmt[1] = disp->type ? disp->type : 'd';
 fmt[2] = '\0';
 for (i = 0; i < len; i += size, p += size) {
  if (i)
   printf(" ");
  value = size == 4 ? fdt32_to_cpu(*(const uint32_t *)p) :
   size == 2 ? (*p << 8) | p[1] : *p;
  printf(fmt, value);
 }
 return 0;
}
