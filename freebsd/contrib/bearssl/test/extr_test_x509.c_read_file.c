
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* DIRNAME ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 unsigned char* read_all (int *,size_t*) ;
 int sprintf (char*,char*,char*,char const*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 int xfree (char*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static unsigned char *
read_file(const char *name, size_t *len)
{
 FILE *f;
 unsigned char *buf;
 f = fopen(name, "rb");
 if (f == ((void*)0)) {
  fprintf(stderr, "could not open file '%s'\n", name);
  exit(EXIT_FAILURE);
 }
 buf = read_all(f, len);
 if (ferror(f)) {
  fprintf(stderr, "read error on file '%s'\n", name);
  exit(EXIT_FAILURE);
 }
 fclose(f);



 return buf;
}
