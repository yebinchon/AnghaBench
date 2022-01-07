
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_open_into (char*,char*,int) ;
 int fdt_totalsize (char*) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static char *_realloc_fdt(char *fdt, int delta)
{
 int new_sz = fdt_totalsize(fdt) + delta;
 fdt = xrealloc(fdt, new_sz);
 fdt_open_into(fdt, fdt, new_sz);
 return fdt;
}
