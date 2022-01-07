
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_address {int dummy; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int addr_for_mem_ref (struct mem_address*,int) ;
 int memory_address_p (int,int ) ;

__attribute__((used)) static bool
valid_mem_ref_p (enum machine_mode mode, struct mem_address *addr)
{
  rtx address;

  address = addr_for_mem_ref (addr, 0);
  if (!address)
    return 0;

  return memory_address_p (mode, address);
}
