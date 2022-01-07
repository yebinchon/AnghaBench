
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
typedef int bfd_byte ;


 int DEPRECATED_EXTRACT_RETURN_VALUE (struct type*,char*,int *) ;
 char* deprecated_grub_regcache_for_registers (struct regcache*) ;

void
legacy_extract_return_value (struct type *type, struct regcache *regcache,
        void *valbuf)
{
  char *registers = deprecated_grub_regcache_for_registers (regcache);
  bfd_byte *buf = valbuf;
  DEPRECATED_EXTRACT_RETURN_VALUE (type, registers, buf);
}
