
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 long ERR ;
 char* errmsg ;
 int errno ;
 int fclose (int *) ;
 int * fopen (int ,char const*) ;
 int fprintf (int ,char*,...) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int scripted ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int strip_escapes (char*) ;
 long write_stream (int *,long,long) ;

long
write_file(char *fn, const char *mode, long n, long m)
{
 FILE *fp;
 long size;
 int cs;

 fp = (*fn == '!') ? popen(fn+1, "w") : fopen(strip_escapes(fn), mode);
 if (fp == ((void*)0)) {
  fprintf(stderr, "%s: %s\n", fn, strerror(errno));
  errmsg = "cannot open output file";
  return ERR;
 }
 if ((size = write_stream(fp, n, m)) < 0) {
  fprintf(stderr, "%s: %s\n", fn, strerror(errno));
  errmsg = "error writing output file";
 }
 if ((cs = (*fn == '!') ? pclose(fp) : fclose(fp)) < 0) {
  fprintf(stderr, "%s: %s\n", fn, strerror(errno));
  errmsg = "cannot close output file";
 }
 if (size < 0 || cs < 0)
  return ERR;
 if (!scripted)
  fprintf(stdout, "%lu\n", size);
 return n ? m - n + 1 : 0;
}
