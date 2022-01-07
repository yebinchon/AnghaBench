
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* reg_offset ;

__attribute__((used)) static int
cannot_fetch_register (int regno)
{
  return (reg_offset[regno] == -1);
}
