
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 llc_circular_between(u8 a, u8 b, u8 c)
{
 b = b - a;
 c = c - a;
 return b <= c;
}
