
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t alloc; int buffer; } ;


 size_t GCOV_BLOCK_SIZE ;
 TYPE_1__ gcov_var ;
 int xrealloc (int ,size_t) ;

__attribute__((used)) static void
gcov_allocate (unsigned length)
{
  size_t new_size = gcov_var.alloc;

  if (!new_size)
    new_size = GCOV_BLOCK_SIZE;
  new_size += length;
  new_size *= 2;

  gcov_var.alloc = new_size;
  gcov_var.buffer = xrealloc (gcov_var.buffer, new_size << 2);
}
