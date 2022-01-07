
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int *) ;
 int bfd_arch_arm ;
 int bfd_error_wrong_format ;
 unsigned int bfd_get_mach (int *) ;
 unsigned int bfd_mach_arm_XScale ;
 unsigned int bfd_mach_arm_ep9312 ;
 unsigned int bfd_mach_arm_iWMMXt ;
 unsigned int bfd_mach_arm_iWMMXt2 ;
 unsigned int bfd_mach_arm_unknown ;
 int bfd_set_arch_mach (int *,int ,unsigned int) ;
 int bfd_set_error (int ) ;

bfd_boolean
bfd_arm_merge_machines (bfd *ibfd, bfd *obfd)
{
  unsigned int in = bfd_get_mach (ibfd);
  unsigned int out = bfd_get_mach (obfd);


  if (out == bfd_mach_arm_unknown)
    bfd_set_arch_mach (obfd, bfd_arch_arm, in);



  else if (in == bfd_mach_arm_unknown)


    bfd_set_arch_mach (obfd, bfd_arch_arm, bfd_mach_arm_unknown);


  else if (out == in)
    ;
  else if (in == bfd_mach_arm_ep9312
    && (out == bfd_mach_arm_XScale
        || out == bfd_mach_arm_iWMMXt
        || out == bfd_mach_arm_iWMMXt2))
    {
      _bfd_error_handler (_("ERROR: %B is compiled for the EP9312, whereas %B is compiled for XScale"),

     ibfd, obfd);
      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }
  else if (out == bfd_mach_arm_ep9312
    && (in == bfd_mach_arm_XScale
        || in == bfd_mach_arm_iWMMXt
        || in == bfd_mach_arm_iWMMXt2))
    {
      _bfd_error_handler (_("ERROR: %B is compiled for the EP9312, whereas %B is compiled for XScale"),

     obfd, ibfd);
      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }
  else if (in > out)
    bfd_set_arch_mach (obfd, bfd_arch_arm, in);



  return TRUE;
}
