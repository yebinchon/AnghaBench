
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gcov_unsigned_t ;
struct TYPE_2__ {unsigned int length; unsigned int offset; scalar_t__ mode; unsigned int start; unsigned int alloc; int * buffer; int overread; int file; } ;


 unsigned int GCOV_BLOCK_SIZE ;
 int fread (int *,int,unsigned int,int ) ;
 int gcc_assert (int) ;
 int gcov_allocate (unsigned int) ;
 TYPE_1__ gcov_var ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,unsigned int) ;

__attribute__((used)) static const gcov_unsigned_t *
gcov_read_words (unsigned words)
{
  const gcov_unsigned_t *result;
  unsigned excess = gcov_var.length - gcov_var.offset;

  gcc_assert (gcov_var.mode > 0);
  if (excess < words)
    {
      gcov_var.start += gcov_var.offset;







      memmove (gcov_var.buffer, gcov_var.buffer + gcov_var.offset, excess * 4);

      gcov_var.offset = 0;
      gcov_var.length = excess;




      if (gcov_var.length + words > gcov_var.alloc)
 gcov_allocate (gcov_var.length + words);
      excess = gcov_var.alloc - gcov_var.length;

      excess = fread (gcov_var.buffer + gcov_var.length,
        1, excess << 2, gcov_var.file) >> 2;
      gcov_var.length += excess;
      if (gcov_var.length < words)
 {
   gcov_var.overread += words - gcov_var.length;
   gcov_var.length = 0;
   return 0;
 }
    }
  result = &gcov_var.buffer[gcov_var.offset];
  gcov_var.offset += words;
  return result;
}
