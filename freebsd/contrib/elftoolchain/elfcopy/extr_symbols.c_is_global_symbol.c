
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GELF_ST_BIND (unsigned char) ;
 scalar_t__ STB_GLOBAL ;
 scalar_t__ STB_GNU_UNIQUE ;

__attribute__((used)) static int
is_global_symbol(unsigned char st_info)
{

 if (GELF_ST_BIND(st_info) == STB_GLOBAL ||
     GELF_ST_BIND(st_info) == STB_GNU_UNIQUE)
  return (1);

 return (0);
}
