
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ht_cb ;
struct TYPE_3__ {int hash_table; } ;
typedef TYPE_1__ cpp_reader ;
typedef scalar_t__ cpp_cb ;


 int ht_forall (int ,int ,void*) ;

void
cpp_forall_identifiers (cpp_reader *pfile, cpp_cb cb, void *v)
{


  ht_forall (pfile->hash_table, (ht_cb) cb, v);
}
