
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NM_CPIO ;
 char* NM_PAX ;
 int NM_TAR ;
 char* argv0 ;
 int cpio_options (int,char**) ;
 int pax_options (int,char**) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strrchr (char*,char) ;
 int tar_options (int,char**) ;

void
options(int argc, char **argv)
{




 if ((argv0 = strrchr(argv[0], '/')) != ((void*)0))
  argv0++;
 else
  argv0 = argv[0];

 if (strcmp(NM_TAR, argv0) == 0) {
  tar_options(argc, argv);
  return;
 }
 else if (strcmp(NM_CPIO, argv0) == 0) {
  cpio_options(argc, argv);
  return;
 }



 argv0 = NM_PAX;
 pax_options(argc, argv);
 return;
}
