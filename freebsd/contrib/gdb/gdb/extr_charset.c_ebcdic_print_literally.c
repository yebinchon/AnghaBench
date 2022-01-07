
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ebcdic_print_literally (void *baton, int c)
{
  c &= 0xff;

  return (64 <= c && c <= 254);
}
