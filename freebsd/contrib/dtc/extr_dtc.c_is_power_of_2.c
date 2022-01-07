
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_power_of_2(int x)
{
 return (x > 0) && ((x & (x - 1)) == 0);
}
