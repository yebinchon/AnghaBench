
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int FDT_ERR_BADOFFSET ;
 int FDT_ERR_BADSTRUCTURE ;


 int fdt_next_tag (void*,int,int*) ;

int _fdt_node_end_offset(void *fdt, int nodeoffset)
{
 int level = 0;
 uint32_t tag;
 int offset, nextoffset;

 tag = fdt_next_tag(fdt, nodeoffset, &nextoffset);
 if (tag != 132)
  return -FDT_ERR_BADOFFSET;
 do {
  offset = nextoffset;
  tag = fdt_next_tag(fdt, offset, &nextoffset);

  switch (tag) {
  case 131:
   return offset;

  case 132:
   level++;
   break;

  case 130:
   level--;
   break;

  case 128:
  case 129:
   break;

  default:
   return -FDT_ERR_BADSTRUCTURE;
  }
 } while (level >= 0);

 return nextoffset;
}
