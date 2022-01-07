
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_SO ;
 char* alloca (scalar_t__) ;
 int as_where (char**,unsigned int*) ;
 int generate_asm_file (int ,char*) ;
 char* getpwd () ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ use_gnu_debug_info_extensions ;

void
stabs_generate_asm_file (void)
{
  char *file;
  unsigned int lineno;

  as_where (&file, &lineno);
  if (use_gnu_debug_info_extensions)
    {
      char *dir, *dir2;

      dir = getpwd ();
      dir2 = alloca (strlen (dir) + 2);
      sprintf (dir2, "%s%s", dir, "/");
      generate_asm_file (N_SO, dir2);
    }
  generate_asm_file (N_SO, file);
}
