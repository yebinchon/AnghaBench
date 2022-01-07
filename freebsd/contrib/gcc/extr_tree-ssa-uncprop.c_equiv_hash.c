
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct equiv_hash_elt {int value; } ;
typedef int hashval_t ;


 int iterative_hash_expr (int ,int ) ;

__attribute__((used)) static hashval_t
equiv_hash (const void *p)
{
  tree value = ((struct equiv_hash_elt *)p)->value;
  return iterative_hash_expr (value, 0);
}
