
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 int interactive ;
 int isatty (int ) ;
 int stdin ;
 int yyparse () ;

__attribute__((used)) static void
mri_emul (void)
{
  interactive = isatty (fileno (stdin));
  yyparse ();
}
