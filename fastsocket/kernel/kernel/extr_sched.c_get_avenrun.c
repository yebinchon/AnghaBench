
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* avenrun ;

void get_avenrun(unsigned long *loads, unsigned long offset, int shift)
{
 loads[0] = (avenrun[0] + offset) << shift;
 loads[1] = (avenrun[1] + offset) << shift;
 loads[2] = (avenrun[2] + offset) << shift;
}
