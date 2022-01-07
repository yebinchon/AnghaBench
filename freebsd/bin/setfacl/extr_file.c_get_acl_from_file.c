
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int acl_t ;
typedef int FILE ;


 int BUFSIZ ;
 int acl_from_text (char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,size_t,int,int *) ;
 int have_stdin ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;

acl_t
get_acl_from_file(const char *filename)
{
 FILE *file;
 size_t len;
 char buf[BUFSIZ+1];

 if (filename == ((void*)0))
  err(1, "(null) filename in get_acl_from_file()");

 if (strcmp(filename, "-") == 0) {
  if (have_stdin)
   err(1, "cannot specify more than one stdin");
  file = stdin;
  have_stdin = 1;
 } else {
  file = fopen(filename, "r");
  if (file == ((void*)0))
   err(1, "fopen() %s failed", filename);
 }

 len = fread(buf, (size_t)1, sizeof(buf) - 1, file);
 buf[len] = '\0';
 if (ferror(file) != 0) {
  fclose(file);
  err(1, "error reading from %s", filename);
 } else if (feof(file) == 0) {
  fclose(file);
  errx(1, "line too long in %s", filename);
 }

 fclose(file);

 return (acl_from_text(buf));
}
