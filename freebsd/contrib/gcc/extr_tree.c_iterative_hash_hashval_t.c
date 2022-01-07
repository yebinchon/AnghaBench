
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;


 int mix (int,int,int) ;

__attribute__((used)) static inline hashval_t
iterative_hash_hashval_t (hashval_t val, hashval_t val2)
{

  hashval_t a = 0x9e3779b9;

  mix (a, val, val2);
  return val2;
}
