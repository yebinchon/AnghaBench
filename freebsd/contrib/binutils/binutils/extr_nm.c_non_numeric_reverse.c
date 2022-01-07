
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int non_numeric_forward (void const*,void const*) ;

__attribute__((used)) static int
non_numeric_reverse (const void *x, const void *y)
{
  return - non_numeric_forward (x, y);
}
