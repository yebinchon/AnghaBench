
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objc_class {void* protocols; void* cache; void* methods; void* ivars; void* instance_size; void* info; void* version; void* name; void* super_class; void* isa; } ;
typedef scalar_t__ CORE_ADDR ;


 void* read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static void
read_objc_class (CORE_ADDR addr, struct objc_class *class)
{
  class->isa = read_memory_unsigned_integer (addr, 4);
  class->super_class = read_memory_unsigned_integer (addr + 4, 4);
  class->name = read_memory_unsigned_integer (addr + 8, 4);
  class->version = read_memory_unsigned_integer (addr + 12, 4);
  class->info = read_memory_unsigned_integer (addr + 16, 4);
  class->instance_size = read_memory_unsigned_integer (addr + 18, 4);
  class->ivars = read_memory_unsigned_integer (addr + 24, 4);
  class->methods = read_memory_unsigned_integer (addr + 28, 4);
  class->cache = read_memory_unsigned_integer (addr + 32, 4);
  class->protocols = read_memory_unsigned_integer (addr + 36, 4);
}
