
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FAIL ;
 int assert (unsigned int) ;
 unsigned int rotate_left (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int
validate_immediate_twopart (unsigned int val,
       unsigned int * highpart)
{
  unsigned int a;
  unsigned int i;

  for (i = 0; i < 32; i += 2)
    if (((a = rotate_left (val, i)) & 0xff) != 0)
      {
 if (a & 0xff00)
   {
     if (a & ~ 0xffff)
       continue;
     * highpart = (a >> 8) | ((i + 24) << 7);
   }
 else if (a & 0xff0000)
   {
     if (a & 0xff000000)
       continue;
     * highpart = (a >> 16) | ((i + 16) << 7);
   }
 else
   {
     assert (a & 0xff000000);
     * highpart = (a >> 24) | ((i + 8) << 7);
   }

 return (a & 0xff) | (i << 7);
      }

  return FAIL;
}
