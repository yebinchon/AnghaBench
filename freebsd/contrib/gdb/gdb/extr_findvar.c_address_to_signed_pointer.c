
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int TYPE_LENGTH (struct type*) ;
 int store_signed_integer (void*,int ,int ) ;

void
address_to_signed_pointer (struct type *type, void *buf, CORE_ADDR addr)
{
  store_signed_integer (buf, TYPE_LENGTH (type), addr);
}
