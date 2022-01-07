
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {int name; } ;
typedef int hashval_t ;


 int htab_hash_string (int ) ;

__attribute__((used)) static hashval_t
hash_struct_pred_data (const void *ptr)
{
  return htab_hash_string (((const struct pred_data *)ptr)->name);
}
