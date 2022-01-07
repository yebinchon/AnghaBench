
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dst_mask; } ;
typedef TYPE_1__ reloc_howto_type ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int abort () ;
 int bfd_get_16 (int *,int *) ;
 int bfd_get_32 (int *,int *) ;
 int bfd_get_64 (int *,int *) ;
 int bfd_get_8 (int *,int *) ;
 int bfd_get_reloc_size (TYPE_1__*) ;
 int bfd_put_16 (int *,int ,int *) ;
 int bfd_put_32 (int *,int ,int *) ;
 int bfd_put_64 (int *,int ,int *) ;
 int bfd_put_8 (int *,int ,int *) ;

void
_bfd_clear_contents (reloc_howto_type *howto,
       bfd *input_bfd,
       bfd_byte *location)
{
  int size;
  bfd_vma x = 0;


  size = bfd_get_reloc_size (howto);
  switch (size)
    {
    default:
    case 0:
      abort ();
    case 1:
      x = bfd_get_8 (input_bfd, location);
      break;
    case 2:
      x = bfd_get_16 (input_bfd, location);
      break;
    case 4:
      x = bfd_get_32 (input_bfd, location);
      break;
    case 8:



      abort ();

      break;
    }


  x &= ~howto->dst_mask;


  switch (size)
    {
    default:
    case 0:
      abort ();
    case 1:
      bfd_put_8 (input_bfd, x, location);
      break;
    case 2:
      bfd_put_16 (input_bfd, x, location);
      break;
    case 4:
      bfd_put_32 (input_bfd, x, location);
      break;
    case 8:



      abort ();

      break;
    }
}
