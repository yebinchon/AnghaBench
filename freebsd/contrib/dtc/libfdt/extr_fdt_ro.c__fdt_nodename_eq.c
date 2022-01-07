
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FDT_TAGSIZE ;
 char* fdt_offset_ptr (void const*,scalar_t__,int) ;
 int memchr (char const*,char,int) ;
 scalar_t__ memcmp (char const*,char const*,int) ;

__attribute__((used)) static int _fdt_nodename_eq(const void *fdt, int offset,
       const char *s, int len)
{
 const char *p = fdt_offset_ptr(fdt, offset + FDT_TAGSIZE, len+1);

 if (! p)

  return 0;

 if (memcmp(p, s, len) != 0)
  return 0;

 if (p[len] == '\0')
  return 1;
 else if (!memchr(s, '@', len) && (p[len] == '@'))
  return 1;
 else
  return 0;
}
