
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_int_text(const char *name, const unsigned char *buf, size_t len)
{
 size_t u;

 printf("%s = ", name);
 for (u = 0; u < len; u ++) {
  printf("%02X", buf[u]);
 }
 printf("\n");
}
