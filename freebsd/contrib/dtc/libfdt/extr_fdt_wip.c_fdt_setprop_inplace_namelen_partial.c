
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FDT_ERR_NOSPACE ;
 void* fdt_getprop_namelen_w (void*,int,char const*,int,int*) ;
 int memcpy (char*,void const*,int) ;

int fdt_setprop_inplace_namelen_partial(void *fdt, int nodeoffset,
     const char *name, int namelen,
     uint32_t idx, const void *val,
     int len)
{
 void *propval;
 int proplen;

 propval = fdt_getprop_namelen_w(fdt, nodeoffset, name, namelen,
     &proplen);
 if (!propval)
  return proplen;

 if (proplen < (len + idx))
  return -FDT_ERR_NOSPACE;

 memcpy((char *)propval + idx, val, len);
 return 0;
}
