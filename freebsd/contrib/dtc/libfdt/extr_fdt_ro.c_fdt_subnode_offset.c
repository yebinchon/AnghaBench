
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_subnode_offset_namelen (void const*,int,char const*,int ) ;
 int strlen (char const*) ;

int fdt_subnode_offset(const void *fdt, int parentoffset,
         const char *name)
{
 return fdt_subnode_offset_namelen(fdt, parentoffset, name, strlen(name));
}
