
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr ;
typedef int hashval_t ;


 int iterative_hash_hashval_t (size_t,int ) ;
 int mix (int ,int ,int ) ;

__attribute__((used)) static inline hashval_t
iterative_hash_pointer (void *ptr, hashval_t val2)
{
  if (sizeof (ptr) == sizeof (hashval_t))
    return iterative_hash_hashval_t ((size_t) ptr, val2);
  else
    {
      hashval_t a = (hashval_t) (size_t) ptr;


      int zero = 0;
      hashval_t b = (hashval_t) ((size_t) ptr >> (sizeof (hashval_t) * 8 + zero));
      mix (a, b, val2);
      return val2;
    }
}
