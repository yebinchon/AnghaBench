
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;
typedef scalar_t__ PTR ;



__attribute__((used)) static hashval_t
hash_pointer (const PTR p)
{
  return (hashval_t) ((long)p >> 3);
}
