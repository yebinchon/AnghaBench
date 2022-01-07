
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
align_value (unsigned int off, unsigned int alignment)
{
  return (off + alignment - 1) & ~(alignment - 1);
}
