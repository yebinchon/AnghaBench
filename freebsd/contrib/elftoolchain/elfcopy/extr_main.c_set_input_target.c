
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfcopy {int itf; } ;
typedef int Elftc_Bfd_Target ;


 int EXIT_FAILURE ;
 int * elftc_bfd_find_target (char const*) ;
 int elftc_bfd_target_flavor (int *) ;
 int errx (int ,char*,char const*) ;

__attribute__((used)) static void
set_input_target(struct elfcopy *ecp, const char *target_name)
{
 Elftc_Bfd_Target *tgt;

 if ((tgt = elftc_bfd_find_target(target_name)) == ((void*)0))
  errx(EXIT_FAILURE, "%s: invalid target name", target_name);
 ecp->itf = elftc_bfd_target_flavor(tgt);
}
