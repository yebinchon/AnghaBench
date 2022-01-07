
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int sel_div(unsigned long a, unsigned long b)
{
 return a / b - (a % b < 0);
}
