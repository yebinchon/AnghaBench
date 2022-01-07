
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum complain_overflow { ____Placeholder_complain_overflow } complain_overflow ;
typedef unsigned int bfd_vma ;
typedef int bfd_reloc_status_type ;


 unsigned int N_ONES (unsigned int) ;
 int abort () ;
 int bfd_reloc_ok ;
 int bfd_reloc_overflow ;





bfd_reloc_status_type
bfd_check_overflow (enum complain_overflow how,
      unsigned int bitsize,
      unsigned int rightshift,
      unsigned int addrsize,
      bfd_vma relocation)
{
  bfd_vma fieldmask, addrmask, signmask, ss, a;
  bfd_reloc_status_type flag = bfd_reloc_ok;





  fieldmask = N_ONES (bitsize);
  signmask = ~fieldmask;
  addrmask = N_ONES (addrsize) | fieldmask;
  a = (relocation & addrmask) >> rightshift;;

  switch (how)
    {
    case 130:
      break;

    case 129:


      signmask = ~ (fieldmask >> 1);


    case 131:





      ss = a & signmask;
      if (ss != 0 && ss != ((addrmask >> rightshift) & signmask))
 flag = bfd_reloc_overflow;
      break;

    case 128:

      if ((a & signmask) != 0)
 flag = bfd_reloc_overflow;
      break;

    default:
      abort ();
    }

  return flag;
}
