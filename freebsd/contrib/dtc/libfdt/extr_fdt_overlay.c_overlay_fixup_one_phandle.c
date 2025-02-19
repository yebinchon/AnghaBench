
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int phandle ;


 int FDT_ERR_BADOVERLAY ;
 int FDT_ERR_NOTFOUND ;
 scalar_t__ cpu_to_fdt32 (scalar_t__) ;
 scalar_t__ fdt_get_phandle (void*,int) ;
 char* fdt_getprop (void*,int,char const*,int*) ;
 int fdt_path_offset (void*,char const*) ;
 int fdt_path_offset_namelen (void*,char const*,scalar_t__) ;
 int fdt_setprop_inplace_namelen_partial (void*,int,char const*,scalar_t__,int,scalar_t__*,int) ;

__attribute__((used)) static int overlay_fixup_one_phandle(void *fdt, void *fdto,
         int symbols_off,
         const char *path, uint32_t path_len,
         const char *name, uint32_t name_len,
         int poffset, const char *label)
{
 const char *symbol_path;
 uint32_t phandle;
 int symbol_off, fixup_off;
 int prop_len;

 if (symbols_off < 0)
  return symbols_off;

 symbol_path = fdt_getprop(fdt, symbols_off, label,
      &prop_len);
 if (!symbol_path)
  return prop_len;

 symbol_off = fdt_path_offset(fdt, symbol_path);
 if (symbol_off < 0)
  return symbol_off;

 phandle = fdt_get_phandle(fdt, symbol_off);
 if (!phandle)
  return -FDT_ERR_NOTFOUND;

 fixup_off = fdt_path_offset_namelen(fdto, path, path_len);
 if (fixup_off == -FDT_ERR_NOTFOUND)
  return -FDT_ERR_BADOVERLAY;
 if (fixup_off < 0)
  return fixup_off;

 phandle = cpu_to_fdt32(phandle);
 return fdt_setprop_inplace_namelen_partial(fdto, fixup_off,
         name, name_len, poffset,
         &phandle, sizeof(phandle));
}
