
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FOPEN_RT ;
 int _ (char*) ;
 int fatal (int ,char const*) ;
 int * fopen (char const*,int ) ;
 int inform (int ,...) ;
 int * yyin ;
 int yyparse () ;

__attribute__((used)) static void
process_def_file (const char *name)
{
  FILE *f = fopen (name, FOPEN_RT);

  if (!f)

    fatal (_("Can't open def file: %s"), name);

  yyin = f;


  inform (_("Processing def file: %s"), name);

  yyparse ();

  inform (_("Processed def file"));
}
