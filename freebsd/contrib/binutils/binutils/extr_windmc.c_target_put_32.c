
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_uint_type ;


 int assert (int) ;
 int bfd_putb32 (int ,void*) ;
 int bfd_putl32 (int ,void*) ;
 scalar_t__ target_is_bigendian ;

__attribute__((used)) static void
target_put_32 (void *p, rc_uint_type value)
{
  assert (!! p);

  if (target_is_bigendian)
    bfd_putb32 (value, p);
  else
    bfd_putl32 (value, p);
}
