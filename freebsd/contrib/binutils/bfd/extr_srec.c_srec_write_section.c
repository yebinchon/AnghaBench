
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ tdata_type ;
struct TYPE_6__ {unsigned int size; scalar_t__ where; int * data; } ;
typedef TYPE_2__ srec_data_list_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int Chunk ;
 int FALSE ;
 int MAXCHUNK ;
 int TRUE ;
 unsigned int bfd_octets_per_byte (int *) ;
 int srec_write_record (int *,int,scalar_t__,int *,int *) ;

__attribute__((used)) static bfd_boolean
srec_write_section (bfd *abfd,
      tdata_type *tdata,
      srec_data_list_type *list)
{
  unsigned int octets_written = 0;
  bfd_byte *location = list->data;







  if (Chunk == 0)
    Chunk = 1;
  else if (Chunk > MAXCHUNK - tdata->type - 2)
    Chunk = MAXCHUNK - tdata->type - 2;

  while (octets_written < list->size)
    {
      bfd_vma address;
      unsigned int octets_this_chunk = list->size - octets_written;

      if (octets_this_chunk > Chunk)
 octets_this_chunk = Chunk;

      address = list->where + octets_written / bfd_octets_per_byte (abfd);

      if (! srec_write_record (abfd,
          tdata->type,
          address,
          location,
          location + octets_this_chunk))
 return FALSE;

      octets_written += octets_this_chunk;
      location += octets_this_chunk;
    }

  return TRUE;
}
