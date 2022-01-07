
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 int find_line (int *,int *,int ,int *,int **,char const**,int *,unsigned int*,unsigned int,void**) ;

bfd_boolean
_bfd_dwarf2_find_line (bfd *abfd,
         asymbol **symbols,
         asymbol *symbol,
         const char **filename_ptr,
         unsigned int *linenumber_ptr,
         unsigned int addr_size,
         void **pinfo)
{
  return find_line (abfd, ((void*)0), 0, symbol, symbols, filename_ptr,
      ((void*)0), linenumber_ptr, addr_size,
      pinfo);
}
