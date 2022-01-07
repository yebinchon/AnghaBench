
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * file_symbols ;
 int * free_pendings ;
 int * global_symbols ;
 int * pending_blocks ;
 int * pending_macros ;

void
buildsym_init (void)
{
  free_pendings = ((void*)0);
  file_symbols = ((void*)0);
  global_symbols = ((void*)0);
  pending_blocks = ((void*)0);
  pending_macros = ((void*)0);
}
