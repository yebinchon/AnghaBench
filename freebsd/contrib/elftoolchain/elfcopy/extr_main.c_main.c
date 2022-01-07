
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfcopy {int abi; int nos; char* progname; int v_sec; int v_arobj; int v_symfile; int v_symop; int v_sadd; int v_sac; int v_seg; scalar_t__ fill; int oed; int oec; int iec; int otf; int itf; } ;


 int ELFCLASSNONE ;
 int ELFDATANONE ;
 char* ELFTC_GETPROGNAME () ;
 int ETF_ELF ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 struct elfcopy* calloc (int,int) ;
 int elf_errmsg (int) ;
 scalar_t__ elf_version (int ) ;
 int elfcopy_main (struct elfcopy*,int,char**) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int exit (int ) ;
 int free (struct elfcopy*) ;
 int free_sec_act (struct elfcopy*) ;
 int free_sec_add (struct elfcopy*) ;
 int mcs_main (struct elfcopy*,int,char**) ;
 int strip_main (struct elfcopy*,int,char**) ;
 scalar_t__ strrcmp (char*,char*) ;
 int warnx (char*) ;

int
main(int argc, char **argv)
{
 struct elfcopy *ecp;

 if (elf_version(EV_CURRENT) == EV_NONE)
  errx(EXIT_FAILURE, "ELF library initialization failed: %s",
      elf_errmsg(-1));

 ecp = calloc(1, sizeof(*ecp));
 if (ecp == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");

 ecp->itf = ecp->otf = ETF_ELF;
 ecp->iec = ecp->oec = ELFCLASSNONE;
 ecp->oed = ELFDATANONE;
 ecp->abi = -1;

 ecp->nos = 1;
 ecp->fill = 0;

 STAILQ_INIT(&ecp->v_seg);
 STAILQ_INIT(&ecp->v_sac);
 STAILQ_INIT(&ecp->v_sadd);
 STAILQ_INIT(&ecp->v_symop);
 STAILQ_INIT(&ecp->v_symfile);
 STAILQ_INIT(&ecp->v_arobj);
 TAILQ_INIT(&ecp->v_sec);

 if ((ecp->progname = ELFTC_GETPROGNAME()) == ((void*)0))
  ecp->progname = "elfcopy";

 if (strrcmp(ecp->progname, "strip") == 0)
  strip_main(ecp, argc, argv);
 else if (strrcmp(ecp->progname, "mcs") == 0)
  mcs_main(ecp, argc, argv);
 else {
  if (strrcmp(ecp->progname, "elfcopy") != 0 &&
      strrcmp(ecp->progname, "objcopy") != 0)
   warnx("program mode not known, defaulting to elfcopy");
  elfcopy_main(ecp, argc, argv);
 }

 free_sec_add(ecp);
 free_sec_act(ecp);
 free(ecp);

 exit(EXIT_SUCCESS);
}
