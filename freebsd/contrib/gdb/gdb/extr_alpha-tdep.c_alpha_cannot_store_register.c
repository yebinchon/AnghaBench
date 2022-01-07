
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALPHA_ZERO_REGNUM ;

__attribute__((used)) static int
alpha_cannot_store_register (int regno)
{
  return regno == ALPHA_ZERO_REGNUM;
}
