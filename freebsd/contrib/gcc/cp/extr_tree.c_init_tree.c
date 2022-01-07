
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htab_create_ggc (int,int ,int ,int *) ;
 int list_hash ;
 int list_hash_eq ;
 int list_hash_table ;

void
init_tree (void)
{
  list_hash_table = htab_create_ggc (31, list_hash, list_hash_eq, ((void*)0));
}
