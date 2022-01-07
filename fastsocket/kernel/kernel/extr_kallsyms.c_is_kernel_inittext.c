
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _einittext ;
 scalar_t__ _sinittext ;

__attribute__((used)) static inline int is_kernel_inittext(unsigned long addr)
{
 if (addr >= (unsigned long)_sinittext
     && addr <= (unsigned long)_einittext)
  return 1;
 return 0;
}
