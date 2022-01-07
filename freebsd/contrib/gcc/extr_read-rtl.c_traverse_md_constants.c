
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_trav ;


 int htab_traverse (scalar_t__,int ,void*) ;
 scalar_t__ md_constants ;

void
traverse_md_constants (htab_trav callback, void *info)
{
  if (md_constants)
    htab_traverse (md_constants, callback, info);
}
