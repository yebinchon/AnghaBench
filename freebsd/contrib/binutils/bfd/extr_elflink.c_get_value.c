
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int abort () ;
 int bfd_get_16 (int *,int *) ;
 int bfd_get_32 (int *,int *) ;
 int bfd_get_64 (int *,int *) ;
 int bfd_get_8 (int *,int *) ;

__attribute__((used)) static bfd_vma
get_value (bfd_vma size,
    unsigned long chunksz,
    bfd * input_bfd,
    bfd_byte * location)
{
  bfd_vma x = 0;

  for (; size; size -= chunksz, location += chunksz)
    {
      switch (chunksz)
 {
 default:
 case 0:
   abort ();
 case 1:
   x = (x << (8 * chunksz)) | bfd_get_8 (input_bfd, location);
   break;
 case 2:
   x = (x << (8 * chunksz)) | bfd_get_16 (input_bfd, location);
   break;
 case 4:
   x = (x << (8 * chunksz)) | bfd_get_32 (input_bfd, location);
   break;
 case 8:



   abort ();

   break;
 }
    }
  return x;
}
