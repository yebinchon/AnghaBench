
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fwrite (unsigned char const*,int,size_t,int *) ;
 int stderr ;

int
write_file(const char *fname, const void *data, size_t len)
{
 FILE *f;
 const unsigned char *buf;

 f = fopen(fname, "wb");
 if (f == ((void*)0)) {
  fprintf(stderr,
   "ERROR: could not open file '%s' for reading\n", fname);
  return -1;
 }
 buf = data;
 while (len > 0) {
  size_t wlen;

  wlen = fwrite(buf, 1, len, f);
  if (wlen == 0) {
   fprintf(stderr,
    "ERROR: could not write all bytes to '%s'\n",
    fname);
   fclose(f);
   return -1;
  }
  buf += wlen;
  len -= wlen;
 }
 if (ferror(f)) {
  fprintf(stderr, "ERROR: write error on file '%s'\n", fname);
  fclose(f);
  return -1;
 }
 fclose(f);
 return 0;
}
