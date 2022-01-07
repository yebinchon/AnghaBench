
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int FDT_ERR_BADOVERLAY ;
 int FDT_ERR_BADPHANDLE ;
 int FDT_ERR_NOTFOUND ;
 char* fdt_getprop (void const*,int,char*,int*) ;
 int fdt_node_offset_by_phandle (void const*,scalar_t__) ;
 int fdt_path_offset (void const*,char const*) ;
 scalar_t__ overlay_get_target_phandle (void const*,int) ;

__attribute__((used)) static int overlay_get_target(const void *fdt, const void *fdto,
         int fragment)
{
 uint32_t phandle;
 const char *path;
 int path_len;


 phandle = overlay_get_target_phandle(fdto, fragment);
 if (phandle == (uint32_t)-1)
  return -FDT_ERR_BADPHANDLE;

 if (phandle)
  return fdt_node_offset_by_phandle(fdt, phandle);


 path = fdt_getprop(fdto, fragment, "target-path", &path_len);
 if (!path) {







  if (path_len == -FDT_ERR_NOTFOUND)
   return -FDT_ERR_BADOVERLAY;

  return path_len;
 }

 return fdt_path_offset(fdt, path);
}
