
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_off_dt_strings (void const*) ;

const char *fdt_string(const void *fdt, int stroffset)
{
 return (const char *)fdt + fdt_off_dt_strings(fdt) + stroffset;
}
