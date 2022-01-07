
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FAIL ;
 unsigned int rotate_left (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int
encode_arm_immediate (unsigned int val)
{
  unsigned int a, i;

  for (i = 0; i < 32; i += 2)
    if ((a = rotate_left (val, i)) <= 0xff)
      return a | (i << 7);

  return FAIL;
}
