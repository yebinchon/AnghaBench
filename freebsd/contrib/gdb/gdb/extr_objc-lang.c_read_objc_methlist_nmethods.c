
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 unsigned long read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static
unsigned long read_objc_methlist_nmethods (CORE_ADDR addr)
{
  return read_memory_unsigned_integer (addr + 4, 4);
}
