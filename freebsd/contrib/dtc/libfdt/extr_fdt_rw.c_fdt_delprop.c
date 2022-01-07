
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 int FDT_RW_CHECK_HEADER (void*) ;
 int FDT_TAGALIGN (int) ;
 int _fdt_splice_struct (void*,struct fdt_property*,int,int ) ;
 struct fdt_property* fdt_get_property_w (void*,int,char const*,int*) ;

int fdt_delprop(void *fdt, int nodeoffset, const char *name)
{
 struct fdt_property *prop;
 int len, proplen;

 FDT_RW_CHECK_HEADER(fdt);

 prop = fdt_get_property_w(fdt, nodeoffset, name, &len);
 if (! prop)
  return len;

 proplen = sizeof(*prop) + FDT_TAGALIGN(len);
 return _fdt_splice_struct(fdt, prop, proplen, 0);
}
