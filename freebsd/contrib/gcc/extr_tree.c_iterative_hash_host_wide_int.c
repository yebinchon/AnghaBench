
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;
typedef int HOST_WIDE_INT ;


 int iterative_hash_hashval_t (int,int ) ;
 int mix (int ,int ,int ) ;

__attribute__((used)) static inline hashval_t
iterative_hash_host_wide_int (HOST_WIDE_INT val, hashval_t val2)
{
  if (sizeof (HOST_WIDE_INT) == sizeof (hashval_t))
    return iterative_hash_hashval_t (val, val2);
  else
    {
      hashval_t a = (hashval_t) val;


      int zero = 0;
      hashval_t b = (hashval_t) (val >> (sizeof (hashval_t) * 8 + zero));
      mix (a, b, val2);
      if (sizeof (HOST_WIDE_INT) > 2 * sizeof (hashval_t))
 {
   hashval_t a = (hashval_t) (val >> (sizeof (hashval_t) * 16 + zero));
   hashval_t b = (hashval_t) (val >> (sizeof (hashval_t) * 24 + zero));
   mix (a, b, val2);
 }
      return val2;
    }
}
