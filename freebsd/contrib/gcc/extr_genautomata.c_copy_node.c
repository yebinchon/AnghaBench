
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* create_node (size_t) ;
 int memcpy (void* const,void const*,size_t) ;

__attribute__((used)) static void *
copy_node (const void *from, size_t size)
{
  void *const result = create_node (size);
  memcpy (result, from, size);
  return result;
}
