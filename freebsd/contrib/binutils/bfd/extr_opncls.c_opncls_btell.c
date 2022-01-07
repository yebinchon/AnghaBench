
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opncls {int where; } ;
struct bfd {struct opncls* iostream; } ;
typedef int file_ptr ;



__attribute__((used)) static file_ptr
opncls_btell (struct bfd *abfd)
{
  struct opncls *vec = abfd->iostream;
  return vec->where;
}
