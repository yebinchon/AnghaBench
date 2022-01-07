
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fwrite (void const*,int,size_t,int *) ;
 int stderr ;

__attribute__((used)) static int
write_to_file(const char *name, const void *data, size_t len)
{
 FILE *f;

 f = fopen(name, "wb");
 if (f == ((void*)0)) {
  fprintf(stderr,
   "ERROR: cannot open file '%s' for writing\n",
   name);
  return 0;
 }
 if (fwrite(data, 1, len, f) != len) {
  fclose(f);
  fprintf(stderr,
   "ERROR: cannot write to file '%s'\n",
   name);
  return 0;
 }
 fclose(f);
 return 1;
}
