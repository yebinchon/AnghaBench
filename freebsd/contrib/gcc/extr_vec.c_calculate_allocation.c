
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec_prefix {unsigned int alloc; unsigned int num; } ;


 int gcc_assert (int) ;

__attribute__((used)) static inline unsigned
calculate_allocation (const struct vec_prefix *pfx, int reserve, bool exact)
{
  unsigned alloc = 0;
  unsigned num = 0;

  gcc_assert (reserve >= 0);

  if (pfx)
    {
      alloc = pfx->alloc;
      num = pfx->num;
    }
  else if (!reserve)


    return 0;


  gcc_assert (alloc - num < (unsigned) reserve);

  if (exact)

    alloc = num + reserve;
  else
    {

      if (!alloc)
 alloc = 4;
      else if (alloc < 16)

 alloc = alloc * 2;
      else

 alloc = (alloc * 3 / 2);


      if (alloc < num + reserve)
 alloc = num + reserve;
    }
  return alloc;
}
