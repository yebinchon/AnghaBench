
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (unsigned char) ;

__attribute__((used)) static int
consume_count (const char **type)
{
  int count = 0;

  if (! ISDIGIT ((unsigned char)**type))
    return -1;

  while (ISDIGIT ((unsigned char)**type))
    {
      count *= 10;






      if ((count % 10) != 0)
 {
   while (ISDIGIT ((unsigned char) **type))
     (*type)++;
   return -1;
 }

      count += **type - '0';
      (*type)++;
    }

  if (count < 0)
    count = -1;

  return (count);
}
