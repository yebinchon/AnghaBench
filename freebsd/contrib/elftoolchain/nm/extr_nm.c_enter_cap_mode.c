
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fileargs_t ;
typedef int cap_rights_t ;
struct TYPE_4__ {int def_filename; } ;
struct TYPE_3__ {int * fileargs; } ;


 int CAP_FSTAT ;
 int CAP_MMAP_R ;
 int EXIT_FAILURE ;
 int FA_OPEN ;
 int O_RDONLY ;
 int cap_rights_init (int *,int ,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter_casper () ;
 scalar_t__ caph_limit_stdio () ;
 int err (int ,char*) ;
 int * fileargs_init (int,char**,int ,int ,int *,int ) ;
 TYPE_2__ nm_info ;
 TYPE_1__ nm_opts ;
 char* strdup (int ) ;

__attribute__((used)) static void
enter_cap_mode(int argc, char **argv)
{
 cap_rights_t rights;
 fileargs_t *fa;
 char *defaultfn;

 cap_rights_init(&rights, CAP_FSTAT, CAP_MMAP_R);

 if (argc == 0) {
  defaultfn = strdup(nm_info.def_filename);
  if (defaultfn == ((void*)0))
   err(EXIT_FAILURE, "strdup");
  argc = 1;
  argv = &defaultfn;
 }

 fa = fileargs_init(argc, argv, O_RDONLY, 0, &rights, FA_OPEN);
 if (fa == ((void*)0))
  err(EXIT_FAILURE, "failed to initialize fileargs");

 caph_cache_catpages();
 if (caph_limit_stdio() < 0)
  err(EXIT_FAILURE, "failed to limit stdio rights");
 if (caph_enter_casper() < 0)
  err(EXIT_FAILURE, "failed to enter capability mode");

 nm_opts.fileargs = fa;
}
