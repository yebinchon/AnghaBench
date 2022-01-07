
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned long INT_LOWPART (int ) ;
 int gcc_assert (unsigned long) ;

int
extract_ME (rtx op)
{
  int i;
  unsigned long val = INT_LOWPART (op);



  if ((val & 1) == 0)
    {
      gcc_assert (val & 0xffffffff);

      i = 30;
      while (((val >>= 1) & 1) == 0)
 --i;

      return i;
    }



  if ((val & 0x80000000) == 0 || (val & 0xffffffff) == 0xffffffff)
    return 31;



  i = 0;
  while (((val <<= 1) & 0x80000000) != 0)
    ++i;

  return i;
}
