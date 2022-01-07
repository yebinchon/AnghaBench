
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 int htab_create (int,int ,int ,int ) ;
 int * shared_lookup_vuses ;
 int val_expr_pair_expr_eq ;
 int val_expr_pair_hash ;
 int value_table ;

void
vn_init (void)
{
  value_table = htab_create (511, val_expr_pair_hash,
        val_expr_pair_expr_eq, free);
  shared_lookup_vuses = ((void*)0);
}
