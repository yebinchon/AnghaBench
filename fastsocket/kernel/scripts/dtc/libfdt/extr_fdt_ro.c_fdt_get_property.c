
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fdt_property {int len; int nameoff; } ;





 int FDT_ERR_BADSTRUCTURE ;
 int FDT_ERR_NOTFOUND ;
 int FDT_ERR_TRUNCATED ;


 int _fdt_check_node_offset (void const*,int) ;
 int fdt32_to_cpu (int ) ;
 int fdt_check_header (void const*) ;
 int fdt_next_tag (void const*,int,int*) ;
 struct fdt_property* fdt_offset_ptr (void const*,int,int) ;
 int fdt_string (void const*,int) ;
 int strcmp (int ,char const*) ;

const struct fdt_property *fdt_get_property(const void *fdt,
         int nodeoffset,
         const char *name, int *lenp)
{
 uint32_t tag;
 const struct fdt_property *prop;
 int namestroff;
 int offset, nextoffset;
 int err;

 if (((err = fdt_check_header(fdt)) != 0)
     || ((err = _fdt_check_node_offset(fdt, nodeoffset)) < 0))
   goto fail;

 nextoffset = err;
 do {
  offset = nextoffset;

  tag = fdt_next_tag(fdt, offset, &nextoffset);
  switch (tag) {
  case 131:
   err = -FDT_ERR_TRUNCATED;
   goto fail;

  case 132:
  case 130:
  case 129:
   break;

  case 128:
   err = -FDT_ERR_BADSTRUCTURE;
   prop = fdt_offset_ptr(fdt, offset, sizeof(*prop));
   if (! prop)
    goto fail;
   namestroff = fdt32_to_cpu(prop->nameoff);
   if (strcmp(fdt_string(fdt, namestroff), name) == 0) {

    int len = fdt32_to_cpu(prop->len);
    prop = fdt_offset_ptr(fdt, offset,
            sizeof(*prop)+len);
    if (! prop)
     goto fail;

    if (lenp)
     *lenp = len;

    return prop;
   }
   break;

  default:
   err = -FDT_ERR_BADSTRUCTURE;
   goto fail;
  }
 } while ((tag != 132) && (tag != 130));

 err = -FDT_ERR_NOTFOUND;
 fail:
 if (lenp)
  *lenp = err;
 return ((void*)0);
}
