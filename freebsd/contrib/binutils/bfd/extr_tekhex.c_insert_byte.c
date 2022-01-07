
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_struct {int* chunk_data; int* chunk_init; } ;
typedef size_t bfd_vma ;
typedef int bfd ;


 size_t CHUNK_MASK ;
 struct data_struct* find_chunk (int *,size_t) ;

__attribute__((used)) static void
insert_byte (bfd *abfd, int value, bfd_vma addr)
{

  struct data_struct *d = find_chunk (abfd, addr);

  d->chunk_data[addr & CHUNK_MASK] = value;
  d->chunk_init[addr & CHUNK_MASK] = 1;
}
