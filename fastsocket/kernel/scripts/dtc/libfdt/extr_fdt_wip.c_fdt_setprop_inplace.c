
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOSPACE ;
 void* fdt_getprop_w (void*,int,char const*,int*) ;
 int memcpy (void*,void const*,int) ;

int fdt_setprop_inplace(void *fdt, int nodeoffset, const char *name,
   const void *val, int len)
{
 void *propval;
 int proplen;

 propval = fdt_getprop_w(fdt, nodeoffset, name, &proplen);
 if (! propval)
  return proplen;

 if (proplen != len)
  return -FDT_ERR_NOSPACE;

 memcpy(propval, val, len);
 return 0;
}
