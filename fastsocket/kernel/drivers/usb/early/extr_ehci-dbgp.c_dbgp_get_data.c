
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int data47; int data03; } ;


 TYPE_1__* ehci_debug ;
 int readl (int *) ;

__attribute__((used)) static inline void dbgp_get_data(void *buf, int size)
{
 unsigned char *bytes = buf;
 u32 lo, hi;
 int i;

 lo = readl(&ehci_debug->data03);
 hi = readl(&ehci_debug->data47);
 for (i = 0; i < 4 && i < size; i++)
  bytes[i] = (lo >> (8*i)) & 0xff;
 for (; i < 8 && i < size; i++)
  bytes[i] = (hi >> (8*(i - 4))) & 0xff;
}
