
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_uint_type ;


 int assert (int) ;
 int bfd_putb16 (int ,void*) ;
 int bfd_putl16 (int ,void*) ;
 scalar_t__ target_is_bigendian ;

__attribute__((used)) static void
target_put_16 (void *p, rc_uint_type value)
{
  assert (!! p);

  if (target_is_bigendian)
    bfd_putb16 (value, p);
  else
    bfd_putl16 (value, p);
}
