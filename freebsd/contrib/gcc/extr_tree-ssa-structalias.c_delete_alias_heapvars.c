
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NULL_TREE ;
 int * heapvar_for_stmt ;
 int htab_delete (int *) ;
 int nonlocal_all ;

void
delete_alias_heapvars (void)
{
  nonlocal_all = NULL_TREE;
  htab_delete (heapvar_for_stmt);
  heapvar_for_stmt = ((void*)0);
}
