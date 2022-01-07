
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 long ERR ;
 long current_addr ;
 char* errmsg ;
 int errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,...) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 long read_stream (int *,long) ;
 int scripted ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int strip_escapes (char*) ;

long
read_file(char *fn, long n)
{
 FILE *fp;
 long size;
 int cs;

 fp = (*fn == '!') ? popen(fn + 1, "r") : fopen(strip_escapes(fn), "r");
 if (fp == ((void*)0)) {
  fprintf(stderr, "%s: %s\n", fn, strerror(errno));
  errmsg = "cannot open input file";
  return ERR;
 }
 if ((size = read_stream(fp, n)) < 0) {
  fprintf(stderr, "%s: %s\n", fn, strerror(errno));
  errmsg = "error reading input file";
 }
 if ((cs = (*fn == '!') ? pclose(fp) : fclose(fp)) < 0) {
  fprintf(stderr, "%s: %s\n", fn, strerror(errno));
  errmsg = "cannot close input file";
 }
 if (size < 0 || cs < 0)
  return ERR;
 if (!scripted)
  fprintf(stdout, "%lu\n", size);
 return current_addr - n;
}
