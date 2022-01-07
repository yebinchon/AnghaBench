
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gcov_unsigned_t ;
struct TYPE_2__ {scalar_t__ mode; int offset; unsigned int alloc; int * buffer; } ;


 int GCOV_BLOCK_SIZE ;
 int gcc_assert (int) ;
 int gcov_allocate (unsigned int) ;
 TYPE_1__ gcov_var ;
 int gcov_write_block (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static gcov_unsigned_t *
gcov_write_words (unsigned words)
{
  gcov_unsigned_t *result;

  gcc_assert (gcov_var.mode < 0);
  if (gcov_var.offset + words > gcov_var.alloc)
    gcov_allocate (gcov_var.offset + words);

  result = &gcov_var.buffer[gcov_var.offset];
  gcov_var.offset += words;

  return result;
}
