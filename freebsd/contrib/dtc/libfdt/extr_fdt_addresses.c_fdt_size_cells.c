
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdt32_t ;


 int FDT_ERR_BADNCELLS ;
 int FDT_MAX_NCELLS ;
 int fdt32_to_cpu (int const) ;
 int * fdt_getprop (void const*,int,char*,int*) ;

int fdt_size_cells(const void *fdt, int nodeoffset)
{
 const fdt32_t *sc;
 int val;
 int len;

 sc = fdt_getprop(fdt, nodeoffset, "#size-cells", &len);
 if (!sc)
  return 2;

 if (len != sizeof(*sc))
  return -FDT_ERR_BADNCELLS;

 val = fdt32_to_cpu(*sc);
 if ((val < 0) || (val > FDT_MAX_NCELLS))
  return -FDT_ERR_BADNCELLS;

 return val;
}
