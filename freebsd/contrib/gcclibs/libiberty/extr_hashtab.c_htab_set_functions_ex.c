
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
typedef int htab_hash ;
typedef int htab_free_with_arg ;
typedef int htab_eq ;
typedef int htab_del ;
typedef int htab_alloc_with_arg ;
struct TYPE_3__ {int free_with_arg_f; int alloc_with_arg_f; int alloc_arg; int del_f; int eq_f; int hash_f; } ;
typedef int PTR ;



void
htab_set_functions_ex (htab_t htab, htab_hash hash_f, htab_eq eq_f,
                       htab_del del_f, PTR alloc_arg,
                       htab_alloc_with_arg alloc_f, htab_free_with_arg free_f)
{
  htab->hash_f = hash_f;
  htab->eq_f = eq_f;
  htab->del_f = del_f;
  htab->alloc_arg = alloc_arg;
  htab->alloc_with_arg_f = alloc_f;
  htab->free_with_arg_f = free_f;
}
