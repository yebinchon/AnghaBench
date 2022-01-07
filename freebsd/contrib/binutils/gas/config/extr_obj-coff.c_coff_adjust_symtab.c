
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ C_FILE ;
 scalar_t__ S_GET_STORAGE_CLASS (int *) ;
 int c_dot_file_symbol (char*,int ) ;
 int * symbol_rootP ;

void
coff_adjust_symtab (void)
{
  if (symbol_rootP == ((void*)0)
      || S_GET_STORAGE_CLASS (symbol_rootP) != C_FILE)
    c_dot_file_symbol ("fake", 0);
}
