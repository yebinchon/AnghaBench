
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;



__attribute__((used)) static inline file_ptr
align_file_position (file_ptr off, int align)
{
  return (off + align - 1) & ~(align - 1);
}
