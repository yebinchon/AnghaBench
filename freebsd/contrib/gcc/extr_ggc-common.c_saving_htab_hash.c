
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_data {int obj; } ;
typedef int hashval_t ;


 int POINTER_HASH (int ) ;

__attribute__((used)) static hashval_t
saving_htab_hash (const void *p)
{
  return POINTER_HASH (((struct ptr_data *)p)->obj);
}
