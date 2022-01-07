
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {int elf; } ;


 char* elf_strptr (int ,int,size_t) ;

__attribute__((used)) static const char*
get_string(struct readelf *re, int strtab, size_t off)
{
 const char *name;

 if ((name = elf_strptr(re->elf, strtab, off)) == ((void*)0))
  return ("");

 return (name);
}
