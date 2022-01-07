
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;



__attribute__((used)) static CORE_ADDR
cond_offset_target (CORE_ADDR address, long offset)
{
  if (address == 0)
    return 0;
  else
    return address + offset;
}
