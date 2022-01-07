
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {void* cu_ver; void* cu_osize; void* cu_psize; } ;
typedef void* Dwarf_Half ;



__attribute__((used)) static void
set_cu_context(struct readelf *re, Dwarf_Half psize, Dwarf_Half osize,
    Dwarf_Half ver)
{

 re->cu_psize = psize;
 re->cu_osize = osize;
 re->cu_ver = ver;
}
