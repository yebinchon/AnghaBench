
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_free (int ,int ,int ) ;
 int gc ;
 int htab_delete (int *) ;
 int shared_lookup_vuses ;
 int tree ;
 int * value_table ;

void
vn_delete (void)
{
  htab_delete (value_table);
  VEC_free (tree, gc, shared_lookup_vuses);
  value_table = ((void*)0);
}
