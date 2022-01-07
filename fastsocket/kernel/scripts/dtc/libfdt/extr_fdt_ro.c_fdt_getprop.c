
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {void const* data; } ;


 struct fdt_property* fdt_get_property (void const*,int,char const*,int*) ;

const void *fdt_getprop(const void *fdt, int nodeoffset,
    const char *name, int *lenp)
{
 const struct fdt_property *prop;

 prop = fdt_get_property(fdt, nodeoffset, name, lenp);
 if (! prop)
  return ((void*)0);

 return prop->data;
}
