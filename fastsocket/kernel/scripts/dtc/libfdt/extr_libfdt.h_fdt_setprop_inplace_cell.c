
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;


 int cpu_to_fdt32 (int ) ;
 int fdt_setprop_inplace (void*,int,char const*,int *,int) ;

__attribute__((used)) static inline int fdt_setprop_inplace_cell(void *fdt, int nodeoffset,
        const char *name, uint32_t val)
{
 val = cpu_to_fdt32(val);
 return fdt_setprop_inplace(fdt, nodeoffset, name, &val, sizeof(val));
}
