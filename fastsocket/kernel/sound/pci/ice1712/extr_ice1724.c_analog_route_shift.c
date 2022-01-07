
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int analog_route_shift(int idx)
{
 return (idx % 2) * 12 + ((idx / 2) * 3) + 8;
}
