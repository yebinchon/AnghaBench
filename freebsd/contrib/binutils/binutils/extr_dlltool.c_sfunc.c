
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
sfunc (const void *a, const void *b)
{
  return *(const long *) a - *(const long *) b;
}
