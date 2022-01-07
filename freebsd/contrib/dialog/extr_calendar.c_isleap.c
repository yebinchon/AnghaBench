
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
isleap(int y)
{
    return ((y % 4 == 0) &&
     ((y % 100 != 0) ||
      (y % 400 == 0))) ? 1 : 0;
}
