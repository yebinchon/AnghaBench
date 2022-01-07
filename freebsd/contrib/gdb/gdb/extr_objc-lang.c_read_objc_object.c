
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objc_object {int isa; } ;
typedef int CORE_ADDR ;


 int read_memory_unsigned_integer (int ,int) ;

__attribute__((used)) static void
read_objc_object (CORE_ADDR addr, struct objc_object *object)
{
  object->isa = read_memory_unsigned_integer (addr, 4);
}
