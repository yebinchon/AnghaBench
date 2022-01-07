
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_secalias ;
 int hash_traverse (int ,int ) ;
 int secalias_hash ;

void
ia64_frob_file (void)
{
  hash_traverse (secalias_hash, do_secalias);
}
