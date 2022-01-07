
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int REALLOC (char*,int,int,int *) ;
 int SKIP_BLANKS () ;
 char* errmsg ;
 char* get_extended_line (int*,int) ;
 int get_shell_command () ;
 char* ibufp ;
 scalar_t__ is_legal_filename (char*) ;
 char* old_filename ;
 int printf (char*,char*) ;
 char* shcmd ;

char *
get_filename(void)
{
 static char *file = ((void*)0);
 static int filesz = 0;

 int n;

 if (*ibufp != '\n') {
  SKIP_BLANKS();
  if (*ibufp == '\n') {
   errmsg = "invalid filename";
   return ((void*)0);
  } else if ((ibufp = get_extended_line(&n, 1)) == ((void*)0))
   return ((void*)0);
  else if (*ibufp == '!') {
   ibufp++;
   if ((n = get_shell_command()) < 0)
    return ((void*)0);
   if (n)
    printf("%s\n", shcmd + 1);
   return shcmd;
  } else if (n > PATH_MAX - 1) {
   errmsg = "filename too long";
   return ((void*)0);
  }
 }

 else if (*old_filename == '\0') {
  errmsg = "no current filename";
  return ((void*)0);
 }

 REALLOC(file, filesz, PATH_MAX, ((void*)0));
 for (n = 0; *ibufp != '\n';)
  file[n++] = *ibufp++;
 file[n] = '\0';
 return is_legal_filename(file) ? file : ((void*)0);
}
