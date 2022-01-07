
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int MAX_LEVEL ;
 char* fdt_get_name (void const*,int,int *) ;
 int fdt_next_tag (void const*,int,int*) ;
 int printf (char*,...) ;
 int puts (char const*) ;

__attribute__((used)) static int list_subnodes(const void *blob, int node)
{
 int nextoffset;
 uint32_t tag;
 int level = 0;
 const char *pathp;
 int depth = 1;

 while (level >= 0) {
  tag = fdt_next_tag(blob, node, &nextoffset);
  switch (tag) {
  case 131:
   pathp = fdt_get_name(blob, node, ((void*)0));
   if (level <= depth) {
    if (pathp == ((void*)0))
     pathp = "/* NULL pointer error */";
    if (*pathp == '\0')
     pathp = "/";
    if (level == 1)
     puts(pathp);
   }
   level++;
   if (level >= MAX_LEVEL) {
    printf("Nested too deep, aborting.\n");
    return 1;
   }
   break;
  case 129:
   level--;
   if (level == 0)
    level = -1;
   break;
  case 130:
   return 1;
  case 128:
   break;
  default:
   if (level <= depth)
    printf("Unknown tag 0x%08X\n", tag);
   return 1;
  }
  node = nextoffset;
 }
 return 0;
}
