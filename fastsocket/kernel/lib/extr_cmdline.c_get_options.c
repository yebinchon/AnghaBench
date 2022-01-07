
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_option (char**,int*) ;
 int get_range (char**,int*) ;

char *get_options(const char *str, int nints, int *ints)
{
 int res, i = 1;

 while (i < nints) {
  res = get_option ((char **)&str, ints + i);
  if (res == 0)
   break;
  if (res == 3) {
   int range_nums;
   range_nums = get_range((char **)&str, ints + i);
   if (range_nums < 0)
    break;





   i += (range_nums - 1);
  }
  i++;
  if (res == 1)
   break;
 }
 ints[0] = i - 1;
 return (char *)str;
}
