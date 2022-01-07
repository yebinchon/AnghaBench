
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FDT_ERR_NOTFOUND ;
 int fdt_path_offset (void*,char*) ;
 int overlay_update_local_node_references (void*,int ,int,int ) ;

__attribute__((used)) static int overlay_update_local_references(void *fdto, uint32_t delta)
{
 int fixups;

 fixups = fdt_path_offset(fdto, "/__local_fixups__");
 if (fixups < 0) {

  if (fixups == -FDT_ERR_NOTFOUND)
   return 0;

  return fixups;
 }




 return overlay_update_local_node_references(fdto, 0, fixups,
          delta);
}
