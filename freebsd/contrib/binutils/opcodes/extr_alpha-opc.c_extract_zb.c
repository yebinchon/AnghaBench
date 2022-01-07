
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
extract_zb (unsigned insn, int *invalid)
{
  if (invalid != (int *) ((void*)0) && ((insn >> 16) & 0x1f) != 31)
    *invalid = 1;
  return 0;
}
