
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GELF_ST_BIND (unsigned char) ;
 scalar_t__ STB_LOCAL ;

__attribute__((used)) static int
is_local_symbol(unsigned char st_info)
{

 if (GELF_ST_BIND(st_info) == STB_LOCAL)
  return (1);

 return (0);
}
