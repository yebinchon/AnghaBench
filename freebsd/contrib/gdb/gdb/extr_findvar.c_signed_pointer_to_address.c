
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int TYPE_LENGTH (struct type*) ;
 int extract_signed_integer (void const*,int ) ;

CORE_ADDR
signed_pointer_to_address (struct type *type, const void *buf)
{
  return extract_signed_integer (buf, TYPE_LENGTH (type));
}
