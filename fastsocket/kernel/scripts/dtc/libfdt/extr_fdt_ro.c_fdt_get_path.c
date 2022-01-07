
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_CHECK_HEADER (void const*) ;
 int FDT_ERR_BADOFFSET ;
 int FDT_ERR_BADSTRUCTURE ;
 int FDT_ERR_NOSPACE ;
 int FDT_ERR_NOTFOUND ;
 char* fdt_get_name (void const*,int,int*) ;
 int fdt_next_node (void const*,int,int*) ;
 int memcpy (char*,char const*,int) ;

int fdt_get_path(const void *fdt, int nodeoffset, char *buf, int buflen)
{
 int pdepth = 0, p = 0;
 int offset, depth, namelen;
 const char *name;

 FDT_CHECK_HEADER(fdt);

 if (buflen < 2)
  return -FDT_ERR_NOSPACE;

 for (offset = 0, depth = 0;
      (offset >= 0) && (offset <= nodeoffset);
      offset = fdt_next_node(fdt, offset, &depth)) {
  if (pdepth < depth)
   continue;

  while (pdepth > depth) {
   do {
    p--;
   } while (buf[p-1] != '/');
   pdepth--;
  }

  name = fdt_get_name(fdt, offset, &namelen);
  if (!name)
   return namelen;
  if ((p + namelen + 1) <= buflen) {
   memcpy(buf + p, name, namelen);
   p += namelen;
   buf[p++] = '/';
   pdepth++;
  }

  if (offset == nodeoffset) {
   if (pdepth < (depth + 1))
    return -FDT_ERR_NOSPACE;

   if (p > 1)
    p--;
   buf[p] = '\0';
   return p;
  }
 }

 if ((offset == -FDT_ERR_NOTFOUND) || (offset >= 0))
  return -FDT_ERR_BADOFFSET;
 else if (offset == -FDT_ERR_BADOFFSET)
  return -FDT_ERR_BADSTRUCTURE;

 return offset;
}
