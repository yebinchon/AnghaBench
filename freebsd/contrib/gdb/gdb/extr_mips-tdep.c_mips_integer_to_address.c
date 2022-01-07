
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int TYPE_LENGTH (int ) ;
 char* alloca (int ) ;
 int builtin_type_void_data_ptr ;
 int extract_signed_integer (char*,int ) ;
 int store_signed_integer (char*,int ,int ) ;
 int unpack_long (struct type*,void*) ;

__attribute__((used)) static CORE_ADDR
mips_integer_to_address (struct type *type, void *buf)
{
  char *tmp = alloca (TYPE_LENGTH (builtin_type_void_data_ptr));
  LONGEST val = unpack_long (type, buf);
  store_signed_integer (tmp, TYPE_LENGTH (builtin_type_void_data_ptr), val);
  return extract_signed_integer (tmp,
     TYPE_LENGTH (builtin_type_void_data_ptr));
}
