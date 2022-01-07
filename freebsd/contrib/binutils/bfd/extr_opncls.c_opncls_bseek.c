
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opncls {int where; } ;
struct bfd {struct opncls* iostream; } ;
typedef int file_ptr ;






__attribute__((used)) static int
opncls_bseek (struct bfd *abfd, file_ptr offset, int whence)
{
  struct opncls *vec = abfd->iostream;
  switch (whence)
    {
    case 128: vec->where = offset; break;
    case 130: vec->where += offset; break;
    case 129: return -1;
    }
  return 0;
}
