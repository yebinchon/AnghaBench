
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ target_read_memory (int ,void*,size_t) ;

__attribute__((used)) static void *
pa64_target_read_memory (void *buffer, CORE_ADDR ptr, size_t bufsiz, int ident)
{
  if (target_read_memory (ptr, buffer, bufsiz) != 0)
    return 0;
  return buffer;
}
