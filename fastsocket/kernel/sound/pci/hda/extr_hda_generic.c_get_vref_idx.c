
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_VREFS ;

__attribute__((used)) static int get_vref_idx(unsigned int vref_caps, unsigned int item_idx)
{
 unsigned int i, n = 0;

 for (i = 0; i < NUM_VREFS; i++) {
  if (vref_caps & (1 << i)) {
   if (n == item_idx)
    return i;
   n++;
  }
 }
 return 0;
}
