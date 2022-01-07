
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfcopy {char const* otgt; void* oem; int otf; int oed; int oec; } ;
typedef int Elftc_Bfd_Target ;


 int ETF_EFI ;
 int ETF_ELF ;
 int ETF_PE ;
 int EXIT_FAILURE ;
 int * elftc_bfd_find_target (char const*) ;
 int elftc_bfd_target_byteorder (int *) ;
 int elftc_bfd_target_class (int *) ;
 int elftc_bfd_target_flavor (int *) ;
 void* elftc_bfd_target_machine (int *) ;
 int errx (int ,char*,char const*) ;

__attribute__((used)) static void
set_output_target(struct elfcopy *ecp, const char *target_name)
{
 Elftc_Bfd_Target *tgt;

 if ((tgt = elftc_bfd_find_target(target_name)) == ((void*)0))
  errx(EXIT_FAILURE, "%s: invalid target name", target_name);
 ecp->otf = elftc_bfd_target_flavor(tgt);
 if (ecp->otf == ETF_ELF) {
  ecp->oec = elftc_bfd_target_class(tgt);
  ecp->oed = elftc_bfd_target_byteorder(tgt);
  ecp->oem = elftc_bfd_target_machine(tgt);
 }
 if (ecp->otf == ETF_EFI || ecp->otf == ETF_PE)
  ecp->oem = elftc_bfd_target_machine(tgt);

 ecp->otgt = target_name;
}
