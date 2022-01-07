
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_node_header {int dummy; } ;


 int ALIGN (scalar_t__) ;
 int FDT_TAGSIZE ;
 char* _realloc_fdt (char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *realloc_node(char *fdt, const char *name)
{
 int delta;

 delta = sizeof(struct fdt_node_header) + ALIGN(strlen(name) + 1)
   + FDT_TAGSIZE;
 return _realloc_fdt(fdt, delta);
}
