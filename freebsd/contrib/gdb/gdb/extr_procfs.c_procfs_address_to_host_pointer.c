
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr ;
typedef int CORE_ADDR ;


 int ADDRESS_TO_POINTER (int ,void**,int ) ;
 int TYPE_LENGTH (int ) ;
 int builtin_type_void_data_ptr ;
 int gdb_assert (int) ;

__attribute__((used)) static void *
procfs_address_to_host_pointer (CORE_ADDR addr)
{
  void *ptr;

  gdb_assert (sizeof (ptr) == TYPE_LENGTH (builtin_type_void_data_ptr));
  ADDRESS_TO_POINTER (builtin_type_void_data_ptr, &ptr, addr);
  return ptr;
}
