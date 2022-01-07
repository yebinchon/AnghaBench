
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int numeric_forward (void const*,void const*) ;

__attribute__((used)) static int
numeric_reverse (const void *x, const void *y)
{
  return - numeric_forward (x, y);
}
