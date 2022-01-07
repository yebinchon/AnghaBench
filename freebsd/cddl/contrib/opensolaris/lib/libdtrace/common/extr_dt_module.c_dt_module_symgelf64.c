
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GElf_Sym ;
typedef int Elf64_Sym ;


 int bcopy (int const*,int *,int) ;

__attribute__((used)) static GElf_Sym *
dt_module_symgelf64(const Elf64_Sym *src, GElf_Sym *dst)
{
 if (dst != ((void*)0))
  bcopy(src, dst, sizeof (GElf_Sym));

 return (dst);
}
