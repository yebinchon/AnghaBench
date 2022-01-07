
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewma {unsigned long internal; unsigned long weight; unsigned long factor; } ;



struct ewma *ewma_add(struct ewma *avg, unsigned long val)
{
 avg->internal = avg->internal ?
  (((avg->internal << avg->weight) - avg->internal) +
   (val << avg->factor)) >> avg->weight :
  (val << avg->factor);
 return avg;
}
