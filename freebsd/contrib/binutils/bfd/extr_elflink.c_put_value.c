
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int abort () ;
 int bfd_put_16 (int *,unsigned long,int *) ;
 int bfd_put_32 (int *,unsigned long,int *) ;
 int bfd_put_64 (int *,unsigned long,int *) ;
 int bfd_put_8 (int *,unsigned long,int *) ;

__attribute__((used)) static void
put_value (bfd_vma size,
    unsigned long chunksz,
    bfd * input_bfd,
    bfd_vma x,
    bfd_byte * location)
{
  location += (size - chunksz);

  for (; size; size -= chunksz, location -= chunksz, x >>= (chunksz * 8))
    {
      switch (chunksz)
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
}
