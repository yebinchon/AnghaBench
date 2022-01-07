
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCPU_SLOT_BASE_SHIFT ;
 int fls (int) ;
 int max (int,int) ;

__attribute__((used)) static int __pcpu_size_to_slot(int size)
{
 int highbit = fls(size);
 return max(highbit - PCPU_SLOT_BASE_SHIFT + 2, 1);
}
