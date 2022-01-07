
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symfile {int dummy; } ;
typedef int real_filename ;
typedef int FILE ;


 int MAXLINESZ ;
 int PATH_MAX ;
 struct symfile* add_new_file (char*) ;
 int add_new_symbol (struct symfile*,char*) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * filename_exist (char*) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isspace (char) ;
 int memset (char*,int ,int) ;
 int perror (char*) ;
 char* srctree ;
 int stderr ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void find_export_symbols(char * filename)
{
 FILE * fp;
 struct symfile *sym;
 char line[MAXLINESZ];
 if (filename_exist(filename) == ((void*)0)) {
  char real_filename[PATH_MAX + 1];
  memset(real_filename, 0, sizeof(real_filename));
  strncat(real_filename, srctree, PATH_MAX);
  strncat(real_filename, "/", PATH_MAX - strlen(real_filename));
  strncat(real_filename, filename,
    PATH_MAX - strlen(real_filename));
  sym = add_new_file(filename);
  fp = fopen(real_filename, "r");
  if (fp == ((void*)0))
  {
   fprintf(stderr, "docproc: ");
   perror(real_filename);
   exit(1);
  }
  while (fgets(line, MAXLINESZ, fp)) {
   char *p;
   char *e;
   if (((p = strstr(line, "EXPORT_SYMBOL_GPL")) != ((void*)0)) ||
                            ((p = strstr(line, "EXPORT_SYMBOL")) != ((void*)0))) {

    while (isalnum(*p) || *p == '_')
     p++;

    while (isspace(*p))
     p++;
    if (*p != '(')
     continue;
    else
     p++;
    while (isspace(*p))
     p++;
    e = p;
    while (isalnum(*e) || *e == '_')
     e++;
    *e = '\0';
    add_new_symbol(sym, p);
   }
  }
  fclose(fp);
 }
}
