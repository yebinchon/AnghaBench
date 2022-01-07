
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int read_memory_unsigned_integer (int ,int) ;

__attribute__((used)) static CORE_ADDR
ppc64_desc_entry_point (CORE_ADDR desc)
{

  return (CORE_ADDR) read_memory_unsigned_integer (desc, 8);
}
