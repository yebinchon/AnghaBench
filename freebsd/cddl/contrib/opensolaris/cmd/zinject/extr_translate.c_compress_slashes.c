
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
compress_slashes(const char *src, char *dest)
{
 while (*src != '\0') {
  *dest = *src++;
  while (*dest == '/' && *src == '/')
   ++src;
  ++dest;
 }
 *dest = '\0';
}
