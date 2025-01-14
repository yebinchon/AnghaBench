
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float gcov_type ;
typedef int HOST_WIDEST_INT ;


 char* HOST_WIDEST_INT_PRINT_DEC ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static char const *
format_gcov (gcov_type top, gcov_type bottom, int dp)
{
  static char buffer[20];

  if (dp >= 0)
    {
      float ratio = bottom ? (float)top / bottom : 0;
      int ix;
      unsigned limit = 100;
      unsigned percent;

      for (ix = dp; ix--; )
 limit *= 10;

      percent = (unsigned) (ratio * limit + (float)0.5);
      if (percent <= 0 && top)
 percent = 1;
      else if (percent >= limit && top != bottom)
 percent = limit - 1;
      ix = sprintf (buffer, "%.*u%%", dp + 1, percent);
      if (dp)
 {
   dp++;
   do
     {
       buffer[ix+1] = buffer[ix];
       ix--;
     }
   while (dp--);
   buffer[ix + 1] = '.';
 }
    }
  else
    sprintf (buffer, HOST_WIDEST_INT_PRINT_DEC, (HOST_WIDEST_INT)top);

  return buffer;
}
