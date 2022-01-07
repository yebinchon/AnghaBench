
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
typedef int bfd_byte ;


 int DEPRECATED_STORE_RETURN_VALUE (struct type*,int *) ;
 int TYPE_LENGTH (struct type*) ;
 int * alloca (int ) ;
 struct regcache* current_regcache ;
 int gdb_assert (int) ;
 int memcpy (int *,void const*,int ) ;

void
legacy_store_return_value (struct type *type, struct regcache *regcache,
      const void *buf)
{
  bfd_byte *b = alloca (TYPE_LENGTH (type));
  gdb_assert (regcache == current_regcache);
  memcpy (b, buf, TYPE_LENGTH (type));
  DEPRECATED_STORE_RETURN_VALUE (type, b);
}
