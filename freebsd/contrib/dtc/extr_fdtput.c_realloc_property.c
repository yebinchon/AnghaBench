
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 scalar_t__ ALIGN (int) ;
 char* _realloc_fdt (char*,int) ;
 int fdt_get_property (char*,int,char const*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *realloc_property(char *fdt, int nodeoffset,
  const char *name, int newlen)
{
 int delta = 0;
 int oldlen = 0;

 if (!fdt_get_property(fdt, nodeoffset, name, &oldlen))

  delta = sizeof(struct fdt_property) + strlen(name) + 1;

 if (newlen > oldlen)

  delta += ALIGN(newlen) - ALIGN(oldlen);

 return _realloc_fdt(fdt, delta);
}
