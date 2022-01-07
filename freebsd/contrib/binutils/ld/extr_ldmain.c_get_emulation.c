
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONST_STRNEQ (char*,char*) ;
 char* DEFAULT_EMULATION ;
 int EMULATION_ENVIRON ;
 int _ (char*) ;
 int einfo (int ) ;
 char* getenv (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *
get_emulation (int argc, char **argv)
{
  char *emulation;
  int i;

  emulation = getenv (EMULATION_ENVIRON);
  if (emulation == ((void*)0))
    emulation = DEFAULT_EMULATION;

  for (i = 1; i < argc; i++)
    {
      if (CONST_STRNEQ (argv[i], "-m"))
 {
   if (argv[i][2] == '\0')
     {

       if (i < argc - 1)
  {
    emulation = argv[i + 1];
    i++;
  }
       else
  einfo (_("%P%F: missing argument to -m\n"));
     }
   else if (strcmp (argv[i], "-mips1") == 0
     || strcmp (argv[i], "-mips2") == 0
     || strcmp (argv[i], "-mips3") == 0
     || strcmp (argv[i], "-mips4") == 0
     || strcmp (argv[i], "-mips5") == 0
     || strcmp (argv[i], "-mips32") == 0
     || strcmp (argv[i], "-mips32r2") == 0
     || strcmp (argv[i], "-mips64") == 0
     || strcmp (argv[i], "-mips64r2") == 0)
     {







     }
   else if (strcmp (argv[i], "-m486") == 0)
     {



     }
   else
     {

       emulation = &argv[i][2];
     }
 }
    }

  return emulation;
}
