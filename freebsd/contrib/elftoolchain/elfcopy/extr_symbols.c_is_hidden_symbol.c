
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GELF_ST_VISIBILITY (unsigned char) ;
 scalar_t__ STV_HIDDEN ;
 scalar_t__ STV_INTERNAL ;

__attribute__((used)) static int
is_hidden_symbol(unsigned char st_other)
{

 if (GELF_ST_VISIBILITY(st_other) == STV_HIDDEN ||
     GELF_ST_VISIBILITY(st_other) == STV_INTERNAL)
  return (1);

 return (0);
}
