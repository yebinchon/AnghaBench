
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char const) ;

__attribute__((used)) static void
print_data(const char *d, size_t sz)
{
 const char *c;

 for (c = d; c < d + sz; c++) {
  if (*c == '\0')
   putchar('\n');
  else
   putchar(*c);
 }
}
