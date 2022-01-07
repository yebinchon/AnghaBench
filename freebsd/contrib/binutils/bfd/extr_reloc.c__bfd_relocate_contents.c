
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rightshift; unsigned int bitpos; scalar_t__ size; int complain_on_overflow; unsigned int src_mask; unsigned int dst_mask; int bitsize; } ;
typedef TYPE_1__ reloc_howto_type ;
typedef unsigned int bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;


 unsigned int N_ONES (int ) ;
 int abort () ;
 int bfd_arch_bits_per_address (int *) ;
 unsigned int bfd_get_16 (int *,int *) ;
 unsigned int bfd_get_32 (int *,int *) ;
 unsigned int bfd_get_64 (int *,int *) ;
 unsigned int bfd_get_8 (int *,int *) ;
 int bfd_get_reloc_size (TYPE_1__*) ;
 int bfd_put_16 (int *,unsigned int,int *) ;
 int bfd_put_32 (int *,unsigned int,int *) ;
 int bfd_put_64 (int *,unsigned int,int *) ;
 int bfd_put_8 (int *,unsigned int,int *) ;
 int bfd_reloc_ok ;
 int bfd_reloc_overflow ;

 int complain_overflow_dont ;



bfd_reloc_status_type
_bfd_relocate_contents (reloc_howto_type *howto,
   bfd *input_bfd,
   bfd_vma relocation,
   bfd_byte *location)
{
  int size;
  bfd_vma x = 0;
  bfd_reloc_status_type flag;
  unsigned int rightshift = howto->rightshift;
  unsigned int bitpos = howto->bitpos;



  if (howto->size < 0)
    relocation = -relocation;


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





  flag = bfd_reloc_ok;
  if (howto->complain_on_overflow != complain_overflow_dont)
    {
      bfd_vma addrmask, fieldmask, signmask, ss;
      bfd_vma a, b, sum;





      fieldmask = N_ONES (howto->bitsize);
      signmask = ~fieldmask;
      addrmask = N_ONES (bfd_arch_bits_per_address (input_bfd)) | fieldmask;
      a = (relocation & addrmask) >> rightshift;
      b = (x & howto->src_mask & addrmask) >> bitpos;

      switch (howto->complain_on_overflow)
 {
 case 129:



   signmask = ~(fieldmask >> 1);


 case 130:





   ss = a & signmask;
   if (ss != 0 && ss != ((addrmask >> rightshift) & signmask))
     flag = bfd_reloc_overflow;







   ss = ((~howto->src_mask) >> 1) & howto->src_mask;
   ss >>= bitpos;


   b = (b ^ ss) - ss;


   sum = a + b;
   if (((~(a ^ b)) & (a ^ sum)) & signmask & addrmask)
     flag = bfd_reloc_overflow;
   break;

 case 128:
   sum = (a + b) & addrmask;
   if ((a | b | sum) & signmask)
     flag = bfd_reloc_overflow;
   break;

 default:
   abort ();
 }
    }


  relocation >>= (bfd_vma) rightshift;
  relocation <<= (bfd_vma) bitpos;


  x = ((x & ~howto->dst_mask)
       | (((x & howto->src_mask) + relocation) & howto->dst_mask));


  switch (size)
    {
    default:
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

  return flag;
}
