
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct data_struct {int* chunk_init; char* chunk_data; } ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_3__ {scalar_t__ vma; } ;
typedef TYPE_1__ asection ;


 int BFD_ASSERT (int) ;
 scalar_t__ CHUNK_MASK ;
 struct data_struct* find_chunk (int *,scalar_t__) ;

__attribute__((used)) static void
move_section_contents (bfd *abfd,
         asection *section,
         const void * locationp,
         file_ptr offset,
         bfd_size_type count,
         bfd_boolean get)
{
  bfd_vma addr;
  char *location = (char *) locationp;
  bfd_vma prev_number = 1;
  struct data_struct *d = ((void*)0);

  BFD_ASSERT (offset == 0);
  for (addr = section->vma; count != 0; count--, addr++)
    {

      bfd_vma chunk_number = addr & ~(bfd_vma) CHUNK_MASK;
      bfd_vma low_bits = addr & CHUNK_MASK;

      if (chunk_number != prev_number)

 d = find_chunk (abfd, chunk_number);

      if (get)
 {
   if (d->chunk_init[low_bits])
     *location = d->chunk_data[low_bits];
   else
     *location = 0;
 }
      else
 {
   d->chunk_data[low_bits] = *location;
   d->chunk_init[low_bits] = (*location != 0);
 }

      location++;
    }
}
