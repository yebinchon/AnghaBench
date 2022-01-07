
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ht_forall (int ,int ,int *) ;
 int ident_hash ;
 int mark_ident ;

void
ggc_mark_stringpool (void)
{
  ht_forall (ident_hash, mark_ident, ((void*)0));
}
