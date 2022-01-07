
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_CHECK_HEADER (void const*) ;
 int FDT_ERR_NOTFOUND ;
 int fdt_next_node (void const*,int,int *) ;
 int fdt_node_check_compatible (void const*,int,char const*) ;

int fdt_node_offset_by_compatible(const void *fdt, int startoffset,
      const char *compatible)
{
 int offset, err;

 FDT_CHECK_HEADER(fdt);






 for (offset = fdt_next_node(fdt, startoffset, ((void*)0));
      offset >= 0;
      offset = fdt_next_node(fdt, offset, ((void*)0))) {
  err = fdt_node_check_compatible(fdt, offset, compatible);
  if ((err < 0) && (err != -FDT_ERR_NOTFOUND))
   return err;
  else if (err == 0)
   return offset;
 }

 return offset;
}
