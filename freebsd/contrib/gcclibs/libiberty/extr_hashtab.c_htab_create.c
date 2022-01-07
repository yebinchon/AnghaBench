
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_t ;
typedef int htab_hash ;
typedef int htab_eq ;
typedef int htab_del ;


 int free ;
 int htab_create_alloc (size_t,int ,int ,int ,int ,int ) ;
 int xcalloc ;

htab_t
htab_create (size_t size, htab_hash hash_f, htab_eq eq_f, htab_del del_f)
{
  return htab_create_alloc (size, hash_f, eq_f, del_f, xcalloc, free);
}
