
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_local_sym_xref ;
 int check_nocrossref ;
 int cref_hash_traverse (int *,int ,int *) ;
 int cref_initialized ;
 int cref_table ;
 int lang_for_each_file (int ) ;

void
check_nocrossrefs (void)
{
  if (! cref_initialized)
    return;

  cref_hash_traverse (&cref_table, check_nocrossref, ((void*)0));

  lang_for_each_file (check_local_sym_xref);
}
